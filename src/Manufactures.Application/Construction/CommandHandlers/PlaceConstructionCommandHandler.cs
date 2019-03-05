﻿using ExtCore.Data.Abstractions;
using Infrastructure.Domain.Commands;
using Manufactures.Application.Helpers;
using Manufactures.Domain.Construction;
using Manufactures.Domain.Construction.Commands;
using Manufactures.Domain.Construction.Entities;
using Manufactures.Domain.Construction.Repositories;
using Manufactures.Domain.Construction.ValueObjects;
using Manufactures.Domain.Materials.Repositories;
using Manufactures.Domain.YarnNumbers.Repositories;
using Manufactures.Domain.Yarns.Repositories;
using Moonlay;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace Manufactures.Application.Construction.CommandHandlers
{
    public class PlaceConstructionCommandHandler : ICommandHandler<PlaceConstructionCommand, ConstructionDocument>
    {
        private readonly IStorage _storage;
        private readonly IConstructionDocumentRepository _constructionDocumentRepository;
        private readonly IYarnDocumentRepository _yarnDocumentRepository;
        public readonly IMaterialTypeRepository _materialTypeRepository;
        public readonly IYarnNumberRepository _yarnNumberRepository;

        public PlaceConstructionCommandHandler(IStorage storage)
        {
            _storage = storage;
            _constructionDocumentRepository = _storage.GetRepository<IConstructionDocumentRepository>();
            _yarnDocumentRepository = _storage.GetRepository<IYarnDocumentRepository>();
            _materialTypeRepository = _storage.GetRepository<IMaterialTypeRepository>();
            _yarnNumberRepository = _storage.GetRepository<IYarnNumberRepository>();
        }

        public async Task<ConstructionDocument> Handle(PlaceConstructionCommand request,
                                                       CancellationToken cancellationToken)
        {
            // Check Available construction number if has defined
            var exsistingConstructionNumber = _constructionDocumentRepository
                    .Find(construction => construction.ConstructionNumber.Equals(request.ConstructionNumber) &&
                                          construction.Deleted.Equals(false))
                    .Count() > 1;

            if (exsistingConstructionNumber)
            {
                Validator.ErrorValidation(("constructionNumber", request.ConstructionNumber + " Has available!"));
            }

            var constructionDocument = new ConstructionDocument(id: Guid.NewGuid(),
                                                                constructionNumber: request.ConstructionNumber,
                                                                amountOfWarp: request.AmountOfWarp,
                                                                amountOfWeft: request.AmountOfWeft,
                                                                width: request.Width,
                                                                wofenType: request.WovenType,
                                                                warpType: request.WarpTypeForm,
                                                                weftType: request.WeftTypeForm,
                                                                totalYarn: request.TotalYarn,
                                                                materialTypeDocument: request.MaterialTypeDocument);

            foreach (var detail in request.ItemsWarp)
            {
                detail.SetDetail(Constants.WARP);

                var yarnDocument = _yarnDocumentRepository.Find(o => o.Identity.Equals(detail.Yarn.Id)).FirstOrDefault();
                var materialTypeDocument = _materialTypeRepository.Find(o => o.Identity == yarnDocument.MaterialTypeId.Value).FirstOrDefault();
                var yarnNumberDocument = _yarnNumberRepository.Find(o => o.Identity == yarnDocument.YarnNumberId.Value).FirstOrDefault();


                if(yarnDocument == null || materialTypeDocument == null || yarnNumberDocument == null)
                {

                } else
                {
                    var yarn = new YarnValueObject(yarnDocument.Identity, yarnDocument.Code, yarnDocument.Name, materialTypeDocument.Code, yarnNumberDocument.Code);
                    ConstructionDetail constructionDetail = new ConstructionDetail(Guid.NewGuid(),
                                                                                                   detail.Quantity,
                                                                                                   detail.Information,
                                                                                                   yarn,
                                                                                                   detail.Detail);

                    constructionDocument.AddConstructionDetail(constructionDetail);
                }
            }

            foreach (var detail in request.ItemsWeft)
            {
                detail.SetDetail(Constants.WEFT);

                var yarnDocument = _yarnDocumentRepository.Find(o => o.Identity.Equals(detail.Yarn.Id)).FirstOrDefault();
                var materialTypeDocument = _materialTypeRepository.Find(o => o.Identity == yarnDocument.MaterialTypeId.Value).FirstOrDefault();
                var yarnNumberDocument = _yarnNumberRepository.Find(o => o.Identity == yarnDocument.YarnNumberId.Value).FirstOrDefault();

                if (yarnDocument == null || materialTypeDocument == null || yarnNumberDocument == null)
                {

                }
                else
                {
                    var yarn = new YarnValueObject(yarnDocument.Identity, yarnDocument.Code, yarnDocument.Name, materialTypeDocument.Code, yarnNumberDocument.Code);
                    ConstructionDetail constructionDetail = new ConstructionDetail(Guid.NewGuid(),
                                                                                   detail.Quantity,
                                                                                   detail.Information,
                                                                                   yarn,
                                                                                   detail.Detail);
                    constructionDocument.AddConstructionDetail(constructionDetail);
                }
            }
            
            await _constructionDocumentRepository.Update(constructionDocument);
            _storage.Save();

            return constructionDocument;
        }
    }
}
