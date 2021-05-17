using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Patient
    {
        [Key]
        public int PatientId { get; set; }
        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public string LastName { get; set; }

        public DateTime DateOfBirth { get; set; }

        public int Age { get; set; }

        public int? Gender { get; set; }
        public string Address { get; set; }
        public int? CityId { get; set; }
        public int StateId { get; set; }
        public string CountryCode { get; set; }
        public string PinCode { get; set; }
        public string MobileNumber { get; set; }

        public string EmailId { get; set; }
        public DateTime CreatedOn { get; set; }
        public byte[] PatientPhoto { get; set; }

        public City cities { get; set; }
    }
}
