using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public partial class Doctorprofile
    {
        [Key]
        public int DocProfileId { get; set; }

        public string Title { get; set; }

        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public string LastName { get; set; }

        public string RegistrationId { get; set; }

        public int? Gender { get; set; }

        public string EmailId { get; set; }

        public string Mobile { get; set; }

        public string Address { get; set; }

        public int? CityId { get; set; }

        public int StateId { get; set; }

        public string CountryCode { get; set; }

        public string PinCode { get; set; }

        public DateTime Created { get; set; }

        public int Active { get; set; }

      

    }
}
