﻿using Barebone.Controllers;
using Manufactures.Domain.Suppliers.Commands;
using Manufactures.Domain.Suppliers.Repositories;
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
    [Route("weaving/suppliers")]
    [ApiController]
    [Authorize]
    public class SupplierController : ControllerApiBase
    {
        private readonly IWeavingSupplierRepository _weavingSupplierRepository;

        public SupplierController(IServiceProvider serviceProvider, IWorkContext workContext) : base(serviceProvider)
        {
            _weavingSupplierRepository = this.Storage.GetRepository<IWeavingSupplierRepository>();
        }

        [HttpGet]
        public async Task<IActionResult> Get(int page = 0, int size = 25, string order = "{}", string keyword = null, string filter = "{}")
        {
            var query = _weavingSupplierRepository.Query.OrderByDescending(item => item.CreatedDate).Take(size).Skip(page * size);
            var suppliers = _weavingSupplierRepository.Find(query).Select(item => new SupplierDto(item));

            if (!string.IsNullOrEmpty(keyword))
            {
                suppliers = suppliers.Where(entity => entity.Code.Contains(keyword, StringComparison.OrdinalIgnoreCase) ||
                                                      entity.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase));
            }

            if (!order.Contains("{}"))
            {
                Dictionary<string, string> orderDictionary = JsonConvert.DeserializeObject<Dictionary<string, string>>(order);
                var key = orderDictionary.Keys.First().Substring(0, 1).ToUpper() + orderDictionary.Keys.First().Substring(1);
                System.Reflection.PropertyInfo prop = typeof(SupplierDto).GetProperty(key);

                if (orderDictionary.Values.Contains("asc"))
                {
                    suppliers = suppliers.OrderBy(x => prop.GetValue(x, null));
                }
                else
                {
                    suppliers = suppliers.OrderByDescending(x => prop.GetValue(x, null));
                }
            }

            suppliers = suppliers.ToArray();
            int totalRows = suppliers.Count();

            await Task.Yield();

            return Ok(suppliers, info: new
            {
                page,
                size,
                count = totalRows
            });
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> Get(string id)
        {
            var Identity = Guid.Parse(id);
            var supplier = _weavingSupplierRepository.Find(item => item.Identity == Identity).Select(item => new SupplierDto(item)).FirstOrDefault();
            await Task.Yield();

            if (supplier == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(supplier);
            }
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody]PlaceNewSupplierCommand command)
        {
            var SupplierDocument = await Mediator.Send(command);

            return Ok(SupplierDocument.Identity);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(string id, [FromBody]UpdateExsistingSupplierCommand command)
        {
            if (!Guid.TryParse(id, out Guid Identity))
            {
                return NotFound();
            }

            command.SetId(Identity);
            var supplierDocument = await Mediator.Send(command);

            return Ok(supplierDocument.Identity);
        }

        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(string id)
        {
            if (!Guid.TryParse(id, out Guid Identity))
            {
                return NotFound();
            }

            var command = new RemoveSupplierCommand();
            command.SetId(Identity);

            var SupplierDocument = await Mediator.Send(command);

            return Ok(SupplierDocument.Identity);
        }
    }
}