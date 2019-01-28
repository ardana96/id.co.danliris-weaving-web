﻿using Infrastructure.Domain.Commands;
using System;

namespace Manufactures.Domain.Orders.Commands
{
    public class RemoveWeavingOrderCommand : ICommand<WeavingOrderDocument>
    {
        public void SetId(Guid id) { Id = id; }
        public Guid Id { get; private set; }
    }
}