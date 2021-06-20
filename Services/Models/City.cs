using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public class City
    {
        [Key]
        public Int32 CityId { get; set; }

        public Int32 CountryId { get; set; }

        public Int32 StateId { get; set; }
       
        public string PostalCode { get; set; }

        public string Village { get; set; }
        
        
        
        public string CityName { get; set; }
        
        public string Town { get; set; }
        
        public string Cord1 { get; set; }
        
        public string Cord2 { get; set; }

        public string Active { get; set; }

    }
}
