﻿using Infrastructure.Domain;
using Manufactures.Domain.DailyOperations.ReachingTying.Entities;
using Manufactures.Domain.DailyOperations.ReachingTying.ReadModels;
using Manufactures.Domain.DailyOperations.ReachingTying.ValueObjects;
using Manufactures.Domain.Shared.ValueObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Manufactures.Domain.DailyOperations.ReachingTying
{
    public class DailyOperationReachingTyingDocument : AggregateRoot<DailyOperationReachingTyingDocument, DailyOperationReachingTyingReadModel>
    {
        public MachineId MachineDocumentId { get; private set; }
        public UnitId WeavingUnitId { get; private set; }
        public OrderId OrderDocumentId { get; private set; }
        public BeamId SizingBeamId { get; private set; }
        public double PISPieces { get; private set; }
        public string ReachingValueObjects { get; private set; }
        public string TyingValueObjects { get; private set; }
        public string OperationStatus { get; private set; }
        public IReadOnlyCollection<DailyOperationReachingTyingDetail> ReachingTyingDetails { get; private set; }

        public DailyOperationReachingTyingDocument(Guid id, MachineId machineDocumentId, UnitId weavingUnitId, OrderId orderDocumentId, BeamId sizingBeamId, double pisPieces, DailyOperationReachingValueObject reachingValueObjects, DailyOperationTyingValueObject tyingValueObjects, string operationStatus) : base(id)
        {
            Identity = id;
            MachineDocumentId = machineDocumentId;
            WeavingUnitId = weavingUnitId;
            OrderDocumentId = orderDocumentId;
            SizingBeamId = sizingBeamId;
            PISPieces = pisPieces;
            ReachingValueObjects = reachingValueObjects.Serialize();
            TyingValueObjects = tyingValueObjects.Serialize();
            OperationStatus = operationStatus;
            ReachingTyingDetails = new List<DailyOperationReachingTyingDetail>();

            this.MarkTransient();

            ReadModel = new DailyOperationReachingTyingReadModel(Identity)
            {
                MachineDocumentId = MachineDocumentId.Value,
                WeavingUnitId = WeavingUnitId.Value,
                OrderDocumentId = OrderDocumentId.Value,
                SizingBeamId = SizingBeamId.Value,
                PISPieces = PISPieces,
                ReachingValueObjects = ReachingValueObjects,
                TyingValueObjects = TyingValueObjects,
                OperationStatus = OperationStatus
            };
        }

        public DailyOperationReachingTyingDocument(Guid id, MachineId machineDocumentId, UnitId weavingUnitId, OrderId orderDocumentId, BeamId sizingBeamId, double pisPieces, DailyOperationReachingValueObject reachingValueObjects, string operationStatus) : base(id)
        {
            Identity = id;
            MachineDocumentId = machineDocumentId;
            WeavingUnitId = weavingUnitId;
            OrderDocumentId = orderDocumentId;
            SizingBeamId = sizingBeamId;
            PISPieces = pisPieces;
            ReachingValueObjects = reachingValueObjects.Serialize();
            OperationStatus = operationStatus;
            ReachingTyingDetails = new List<DailyOperationReachingTyingDetail>();

            this.MarkTransient();

            ReadModel = new DailyOperationReachingTyingReadModel(Identity)
            {
                MachineDocumentId = MachineDocumentId.Value,
                WeavingUnitId = WeavingUnitId.Value,
                OrderDocumentId = OrderDocumentId.Value,
                SizingBeamId = SizingBeamId.Value,
                PISPieces = PISPieces,
                ReachingValueObjects = ReachingValueObjects,
                OperationStatus = OperationStatus,
            };
        }

        public DailyOperationReachingTyingDocument(Guid id, MachineId machineDocumentId, UnitId weavingUnitId, OrderId orderDocumentId, BeamId sizingBeamId, double pisPieces, string operationStatus) : base(id)
        {
            Identity = id;
            MachineDocumentId = machineDocumentId;
            WeavingUnitId = weavingUnitId;
            OrderDocumentId = orderDocumentId;
            SizingBeamId = sizingBeamId;
            PISPieces = pisPieces;
            OperationStatus = operationStatus;
            ReachingTyingDetails = new List<DailyOperationReachingTyingDetail>();

            this.MarkTransient();

            ReadModel = new DailyOperationReachingTyingReadModel(Identity)
            {
                MachineDocumentId = MachineDocumentId.Value,
                WeavingUnitId = WeavingUnitId.Value,
                OrderDocumentId = OrderDocumentId.Value,
                SizingBeamId = SizingBeamId.Value,
                PISPieces = PISPieces,
                OperationStatus = OperationStatus,
            };
        }

        public DailyOperationReachingTyingDocument(DailyOperationReachingTyingReadModel readModel) : base(readModel)
        {
            MachineDocumentId = readModel.MachineDocumentId.HasValue ? new MachineId(readModel.MachineDocumentId.Value) : null;
            WeavingUnitId = readModel.WeavingUnitId.HasValue ? new UnitId(readModel.WeavingUnitId.Value) : null;
            OrderDocumentId = readModel.OrderDocumentId.HasValue ? new OrderId(readModel.OrderDocumentId.Value) : null;
            SizingBeamId = readModel.SizingBeamId.HasValue ? new BeamId(readModel.SizingBeamId.Value) : null;
            PISPieces = readModel.PISPieces;
            ReachingValueObjects = readModel.ReachingValueObjects;
            TyingValueObjects = readModel.TyingValueObjects;
            OperationStatus = readModel.OperationStatus;
            ReachingTyingDetails = readModel.ReachingTyingDetails;
        }

        public void AddDailyOperationReachingTyingDetail(DailyOperationReachingTyingDetail detail)
        {
            var list = ReachingTyingDetails.ToList();
            list.Add(detail);
            ReachingTyingDetails = list;
            ReadModel.ReachingTyingDetails = ReachingTyingDetails.ToList();

            MarkModified();
        }

        public void UpdateDailyOperationReachingTyingDetail(DailyOperationReachingTyingDetail detail)
        {
            var reachingDetails = ReachingTyingDetails.ToList();

            //Get Reaching Detail Update
            var index =
                reachingDetails
                    .FindIndex(x => x.Identity.Equals(detail.Identity));
            var reachingDetail =
                reachingDetails
                    .Where(x => x.Identity.Equals(detail.Identity))
                    .FirstOrDefault();

            //Update Detail Properties
            reachingDetail.SetShiftId(new ShiftId(reachingDetail.ShiftDocumentId));
            reachingDetail.SetOperatorDocumentId(new OperatorId(reachingDetail.OperatorDocumentId));
            reachingDetail.SetDateTimeMachine(reachingDetail.DateTimeMachine);
            reachingDetail.SetMachineStatus(reachingDetail.MachineStatus);

            reachingDetails[index] = reachingDetail;
            ReachingTyingDetails = reachingDetails;
            ReadModel.ReachingTyingDetails = reachingDetails;
            MarkModified();
        }

        public void RemoveDailyOperationReachingTyingDetail(Guid identity)
        {
            var detail = ReachingTyingDetails.Where(o => o.Identity == identity).FirstOrDefault();
            var list = ReachingTyingDetails.ToList();

            list.Remove(detail);
            ReachingTyingDetails = list;
            ReadModel.ReachingTyingDetails = ReachingTyingDetails.ToList();

            MarkModified();
        }

        public void SetPISPieces(double pisPieces)
        {
            PISPieces = pisPieces;
            ReadModel.PISPieces = pisPieces;
            MarkModified();
        }

        public void SetReachingValueObjects(DailyOperationReachingValueObject reachingValueObjects)
        {
            ReachingValueObjects = reachingValueObjects.Serialize();
            ReadModel.ReachingValueObjects = reachingValueObjects.Serialize();
            MarkModified();
        }

        public void SetTyingValueObjects(DailyOperationTyingValueObject tyingValueObjects)
        {
            TyingValueObjects = tyingValueObjects.Serialize();
            ReadModel.TyingValueObjects = tyingValueObjects.Serialize();
            MarkModified();
        }

        public void SetOperationStatus(string operationStatus)
        {
            OperationStatus = operationStatus;
            ReadModel.OperationStatus = operationStatus;
            MarkModified();
        }

        protected override DailyOperationReachingTyingDocument GetEntity()
        {
            return this;
        }
    }
}