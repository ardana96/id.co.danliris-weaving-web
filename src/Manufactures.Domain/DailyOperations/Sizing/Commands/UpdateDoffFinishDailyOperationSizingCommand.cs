﻿using FluentValidation;
using Infrastructure.Domain.Commands;
using Manufactures.Domain.Shared.ValueObjects;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

namespace Manufactures.Domain.DailyOperations.Sizing.Commands
{
    public class UpdateDoffFinishDailyOperationSizingCommand : ICommand<DailyOperationSizingDocument>
    {
        [JsonProperty(PropertyName = "Id")]
        public Guid Id { get; set; }

        [JsonProperty(PropertyName = "Counter")]
        public DailyOperationSizingCounterCommand Counter { get; set; }

        [JsonProperty(PropertyName = "Weight")]
        public DailyOperationSizingWeightCommand Weight { get; set; }

        [JsonProperty(PropertyName = "MachineSpeed")]
        public int MachineSpeed { get; set; }

        [JsonProperty(PropertyName = "TexSQ")]
        public double TexSQ { get; set; }

        [JsonProperty(PropertyName = "Visco")]
        public double Visco { get; set; }

        [JsonProperty(PropertyName = "PIS")]
        public int PIS { get; set; }

        [JsonProperty(PropertyName = "SPU")]
        public double SPU { get; set; }

        [JsonProperty(PropertyName = "SizingBeamDocumentId")]
        public BeamId SizingBeamDocumentId { get; set; }

        [JsonProperty(PropertyName = "DailyOperationSizingDetails")]
        public UpdateDoffFinishDailyOperationSizingDetailCommand UpdateDoffFinishDailyOperationSizingDetails { get; set; }

        public void SetId(Guid Id)
        {
            this.Id = Id;
        }
    }
    public class UpdateDoffFinishDailyOperationSizingCommandValidator
     : AbstractValidator<UpdateDoffFinishDailyOperationSizingCommand>
    {
        public UpdateDoffFinishDailyOperationSizingCommandValidator()
        {
            RuleFor(command => command.Counter).SetValidator(new DailyOperationSizingCounterCommandValidator());
            RuleFor(command => command.Weight).SetValidator(new DailyOperationSizingWeightCommandValidator());
            RuleFor(validator => validator.MachineSpeed).NotEmpty();
            RuleFor(validator => validator.TexSQ).NotEmpty();
            RuleFor(validator => validator.Visco).NotEmpty();
            RuleFor(validator => validator.PIS).NotEmpty();
            RuleFor(validator => validator.SPU).NotEmpty();
            RuleFor(validator => validator.SizingBeamDocumentId.Value).NotEmpty();
            RuleFor(command => command.UpdateDoffFinishDailyOperationSizingDetails).SetValidator(new UpdateDoffDailyOperationSizingDetailCommandValidator());
        }
    }
}
