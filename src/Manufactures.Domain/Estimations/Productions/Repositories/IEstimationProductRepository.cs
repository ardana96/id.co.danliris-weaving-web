﻿using Infrastructure.Domain.Repositories;
using Manufactures.Domain.Estimations.Productions.ReadModels;
using System.Threading.Tasks;

namespace Manufactures.Domain.Estimations.Productions.Repositories
{
    public interface IEstimationProductRepository : IAggregateRepository<EstimatedProductionDocument, EstimatedProductionDocumentReadModel>
    {
        Task<string> GetEstimationNumber();
    }
}
