using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Doctorbranches
    {
        [Key]
        public int? DocProfileId { get; set; }
        public int BranchId { get; set; }
        public string Address { get; set; }
        public int City { get; set; }
        public decimal Coord1 { get; set; }
        public decimal Coord2 { get; set; }
        public string RegistrationId { get; set; }
        public int Active { get; set; }
    }
}
