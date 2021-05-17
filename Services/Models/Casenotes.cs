using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Casenotes
    {
        [Key]
        public int CaseNoteId { get; set; }
        public int? PatientId { get; set; }
        public int? DoctorId { get; set; }
        public string CaseNotes1 { get; set; }
        public DateTime? CaseNoteDate { get; set; }
    }
}
