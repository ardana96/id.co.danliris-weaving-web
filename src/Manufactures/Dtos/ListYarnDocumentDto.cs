﻿using Manufactures.Domain.Yarns;
using System;

namespace Manufactures.Dtos
{
    public class ListYarnDocumentDto
    {
        public ListYarnDocumentDto(YarnDocument document)
        {
            Id = document.Identity;
            Code = document.Code;
            Name = document.Name;
            Uom = document.CoreUom.Unit;
            Currency = document.CoreCurrency.Name;
            Price = document.Price;
        }

        public Guid Id { get; }
        public string Code { get; }
        public string Name { get; }
        public string Uom { get; }
        public string Currency { get; }
        public double Price { get; }
    }
}