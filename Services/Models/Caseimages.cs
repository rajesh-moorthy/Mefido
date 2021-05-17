using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Caseimages
    {
        [Key]
        public int CaseImageId { get; set; }
        public string CaseNoteId { get; set; }
        public byte[] CaseImage { get; set; }
    }
}
