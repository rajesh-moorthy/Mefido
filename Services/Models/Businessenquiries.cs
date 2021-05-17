using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Businessenquiries
    {
        [Key]
        public int EnquiryId { get; set; }
        public string DoctorName { get; set; }
        public string Address { get; set; }
        public int CityId { get; set; }
        public string RegistrationId { get; set; }
        public decimal Coord1 { get; set; }
        public decimal Coord2 { get; set; }
        public string MobileNumber { get; set; }
        public string EmailId { get; set; }
        public DateTime? DateofEnq { get; set; }
        public string EnquiryType { get; set; }
        public string EnquiryStatus { get; set; }
    }
}
