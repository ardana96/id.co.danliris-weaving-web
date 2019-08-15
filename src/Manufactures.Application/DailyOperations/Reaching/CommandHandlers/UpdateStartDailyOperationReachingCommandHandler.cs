﻿using ExtCore.Data.Abstractions;
using Infrastructure.Domain.Commands;
using Manufactures.Domain.DailyOperations.Reaching;
using Manufactures.Domain.DailyOperations.Reaching.Command;
using Manufactures.Domain.DailyOperations.Reaching.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Manufactures.Application.DailyOperations.Reaching.CommandHandlers
{
    //public class UpdateStartDailyOperationReachingCommandHandler : ICommandHandler<UpdateStartDailyOperationReachingCommand, DailyOperationReachingDocument>
    //{
    //    private readonly IStorage _storage;
    //    private readonly IDailyOperationReachingRepository
    //        _dailyOperationReachingDocumentRepository;

    //    public UpdateStartDailyOperationReachingCommandHandler(IStorage storage)
    //    {
    //        _storage = storage;
    //        _dailyOperationReachingDocumentRepository =
    //            _storage.GetRepository<IDailyOperationReachingRepository>();
    //    }

    //    public Task<DailyOperationReachingDocument> Handle(UpdateStartDailyOperationReachingCommand request, CancellationToken cancellationToken)
    //    {
    //        var existingDailyOperationReaching = _dailyOperationReachingDocumentRepository.Query
    //                                                                              .Include(d => d.ReachingDetails)
    //                                                                              .Where(reachingDoc => reachingDoc.Identity.Equals(request.Id))
    //                                                                              .FirstOrDefault();
    //        var existingReachingDetail = existingDailyOperationReaching.ReachingDetails.OrderByDescending(d => d.DateTimeMachine);
    //        var lastReachingDetail = existingReachingDetail.FirstOrDefault();
    //    }
    //}
}