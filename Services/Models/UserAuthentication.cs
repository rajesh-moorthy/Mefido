using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MefidoServices.Models
{
    public class UserAuthentication
    {
        [Key]
        public int AuthId { get; set; }

        [Required(ErrorMessage = "Please Provide Username", AllowEmptyStrings = false)]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Please provide password", AllowEmptyStrings = false)]
        [DataType(System.ComponentModel.DataAnnotations.DataType.Password)]
        public string Password { get; set; }

        public DateTime LastLogin { get; set; }
        public int IsUserLocked { get; set; }


    }
}
