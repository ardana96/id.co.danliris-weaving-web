﻿using Infrastructure.Domain.ReadModels;
using System;

namespace Manufactures.Domain.Orders.ReadModels
{
    public class OrderDocumentReadModel : ReadModelBase
    {
        public OrderDocumentReadModel(Guid identity) : base(identity) { }

        public string OrderNumber { get; internal set; }
        public DateTimeOffset DateOrdered { get; internal set; }
        public string WarpOrigin { get; internal set; }
        public string WeftOrigin { get; internal set; }
        public int WholeGrade { get; internal set; }
        public string YarnType { get; internal set; }
        public string Period { get; internal set; }
        public string WarpComposition { get; internal set; }
        public Guid? ConstructionId { get; internal set; }
        public int? UnitId { get; internal set; }
        public string OrderStatus { get; internal set; }
        public string WeftComposition { get; internal set; }
    }
}