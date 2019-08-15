﻿using Manufactures.Domain.DailyOperations.Reaching;
using Manufactures.Domain.DailyOperations.Reaching.Entities;
using Manufactures.Domain.Shared.ValueObjects;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Manufactures.Application.DailyOperations.Reaching.DataTransferObjects
{
    public class DailyOperationReachingListDto
    {
        [JsonProperty(PropertyName = "Id")]
        public Guid Id { get; private set; }

        [JsonProperty(PropertyName = "DateTimeOperation")]
        public DateTimeOffset DateTimeOperation { get; private set; }

        [JsonProperty(PropertyName = "MachineNumber")]
        public string MachineNumber { get; }

        [JsonProperty(PropertyName = "WeavingUnitDocumentId")]
        public UnitId WeavingUnitDocumentId { get; }

        [JsonProperty(PropertyName = "ConstructionNumber")]
        public string ConstructionNumber { get; }

        [JsonProperty(PropertyName = "SizingBeamNumber")]
        public string SizingBeamNumber { get; }

        public DailyOperationReachingListDto(DailyOperationReachingDocument document, DailyOperationReachingDetail detail, string machineNumber, UnitId weavingUnitDocumentId, string constructionNumber, string sizingBeamNumber)
        {
            Id = document.Identity;
            DateTimeOperation = detail.DateTimeMachine;
            MachineNumber = machineNumber;
            WeavingUnitDocumentId = document.WeavingUnitId;
            ConstructionNumber = constructionNumber;
            SizingBeamNumber = sizingBeamNumber;
        }
    }
}