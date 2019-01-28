﻿using Barebone.Controllers;
using Manufactures.Domain.Orders.Commands;
using Manufactures.Domain.Orders.Repositories;
using Manufactures.Dtos;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Moonlay.ExtCore.Mvc.Abstractions;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Manufactures.Controllers.Api
{
    [Produces("application/json")]
    [Route("weaving/orders")]
    [ApiController]
    [Authorize]
    public class OrderDocumentController : ControllerApiBase
    {
        private readonly IWeavingOrderDocumentRepository _weavingOrderDocumentRepository;

        public OrderDocumentController(IServiceProvider serviceProvider, IWorkContext workContext) : base(serviceProvider)
        {
            _weavingOrderDocumentRepository = this.Storage.GetRepository<IWeavingOrderDocumentRepository>();
        }

        [HttpGet]
        [Route("request-order-number")]
        public async Task<IActionResult> GetOrderNumber()
        {
            var orderNumber = await _weavingOrderDocumentRepository.GetWeavingOrderNumber();

            return Ok(orderNumber);
        }

        [HttpGet("order-report/{month}/{year}/{unitCode}")]
        public async Task<IActionResult> Get(string month, string year, string unitCode)
        {
            var query = _weavingOrderDocumentRepository.Query.OrderByDescending(item => item.CreatedDate);
            var orderDto = _weavingOrderDocumentRepository.Find(query)
                                                          .Select(item => new WeavingOrderDocumentDto(item))
                                                          .Where(entity => entity.Period.Month.Contains(month) &&
                                                                           entity.Period.Year.Contains(year) &&
                                                                           entity.WeavingUnit.Code.Equals(unitCode))
                                                          .ToArray();
            await Task.Yield();

            if (orderDto.Length == 0)
            {
                return NotFound();
            }
            else
            {
                return Ok(orderDto);
            }
        }

        [HttpGet]
        public async Task<IActionResult> Get(int page = 0,
                                             int size = 25,
                                             string order = "{}",
                                             string keyword = null,
                                             string filter = "{}")
        {
            var query = _weavingOrderDocumentRepository.Query
                                                       .OrderByDescending(item => item.CreatedDate)
                                                       .Take(size)
                                                       .Skip(page * size);
            var weavingOrderDocuments = _weavingOrderDocumentRepository.Find(query)
                                                                       .Select(item => new ListWeavingOrderDocumentDto(item));

            if (!string.IsNullOrEmpty(keyword))
            {
                weavingOrderDocuments = weavingOrderDocuments
                                            .Where(entity => entity.OrderNumber.Contains(keyword, StringComparison.OrdinalIgnoreCase) ||
                                                             entity.ConstructionNumber.Contains(keyword, StringComparison.OrdinalIgnoreCase) ||
                                                             entity.WeavingUnit.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase) ||
                                                             entity.DateOrdered.LocalDateTime.ToString("dd MMMM yyyy").Contains(keyword, StringComparison.OrdinalIgnoreCase));
            }

            if (!order.Contains("{}"))
            {
                Dictionary<string, string> orderDictionary = JsonConvert.DeserializeObject<Dictionary<string, string>>(order);
                var key = orderDictionary.Keys.First().Substring(0, 1).ToUpper() + orderDictionary.Keys.First().Substring(1);
                System.Reflection.PropertyInfo prop = typeof(ListWeavingOrderDocumentDto).GetProperty(key);

                if (orderDictionary.Values.Contains("asc"))
                {
                    weavingOrderDocuments = weavingOrderDocuments.OrderBy(x => prop.GetValue(x, null));
                }
                else
                {
                    weavingOrderDocuments = weavingOrderDocuments.OrderByDescending(x => prop.GetValue(x, null));
                }
            }

            weavingOrderDocuments = weavingOrderDocuments.ToArray();
            int totalRows = weavingOrderDocuments.Count();

            await Task.Yield();

            return Ok(weavingOrderDocuments, info: new
            {
                page,
                size,
                count = totalRows
            });
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> Get(string id)
        {
            var orderId = Guid.Parse(id);
            var orderDto = _weavingOrderDocumentRepository.Find(item => item.Identity == orderId)
                                                          .Select(item => new WeavingOrderDocumentDto(item))
                                                          .FirstOrDefault();

            await Task.Yield();

            if (orderId == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(orderDto);
            }
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody]PlaceWeavingOrderCommand command)
        {
            command.OrderNumber = await _weavingOrderDocumentRepository.GetWeavingOrderNumber();

            var order = await Mediator.Send(command);

            return Ok(order.Identity);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(string id, [FromBody]UpdateWeavingOrderCommand command)
        {
            if (!Guid.TryParse(id, out Guid orderId))
            {
                return NotFound();
            }

            command.SetId(orderId);
            var order = await Mediator.Send(command);

            return Ok(order.Identity);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            if (!Guid.TryParse(id, out Guid orderId))
            {
                return NotFound();
            }

            var command = new RemoveWeavingOrderCommand();
            command.SetId(orderId);

            var order = await Mediator.Send(command);

            return Ok(order.Identity);
        }
    }
}