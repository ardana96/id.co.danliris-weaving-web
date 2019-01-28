﻿using System;
using System.Threading;
using System.Threading.Tasks;
using ExtCore.Data.Abstractions;
using Infrastructure.Domain.Commands;
using Manufactures.Domain.Materials;
using Manufactures.Domain.Materials.Commands;
using Manufactures.Domain.Materials.Repositories;
using Moonlay;

namespace Manufactures.Application.Materials.CommandHandlers
{
    public class PlaceMaterialTypeCommandHandler : ICommandHandler<PlaceMaterialTypeCommand, MaterialTypeDocument>
    {
        private readonly IStorage _storage;
        private readonly IMaterialTypeRepository _materialTypeRepository;

        public PlaceMaterialTypeCommandHandler(IStorage storage)
        {
            _storage = storage;
            _materialTypeRepository = storage.GetRepository<IMaterialTypeRepository>();
        }

        public async Task<MaterialTypeDocument> Handle(PlaceMaterialTypeCommand request,
                                               CancellationToken cancellationToken)
        {
            // Check if has same material code
            if (await _materialTypeRepository.ChekAvailableMaterialCode(request.Code))
            {
                throw Validator.ErrorValidation(("Code", "Code with " + request.Code + " has available"));
            }
            
            var materialType = new MaterialTypeDocument(id: Guid.NewGuid(),
                                                code: request.Code,
                                                name: request.Name,
                                                description: request.Description);

            await _materialTypeRepository.Update(materialType);

            _storage.Save();

            return materialType;
        }
    }
}