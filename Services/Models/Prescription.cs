using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Prescription
    {
        [Key]
        public int PrescriptionId { get; set; }
        public int? PatientId { get; set; }
        public DateTime? PrescDate { get; set; }
        public int? VisitId { get; set; }
        public string MedicineName { get; set; }
        public int? Morning { get; set; }
        public int? Afternoon { get; set; }
        public int? Evening { get; set; }
        public int? Night { get; set; }
        public string Bfaf { get; set; }
    }
}
