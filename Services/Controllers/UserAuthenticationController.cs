using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

using MefidoServices.Models;
using Microsoft.EntityFrameworkCore;

namespace MefidoServices.Controllers
{
    public class UserAuthenticationController : ControllerBase
    {

        [HttpGet("api/GetUserbyUserName/{userName}")]
        public async Task<IList<UserData>> GetUserbyUserName(string userName)
        {
            var db = new MefidoContext();
            var UserAuth = from s in db.userAuth
                           where s.UserName == userName
                           select new UserData()
                           {
                               UserName = s.UserName,
                               Password = s.Password,
                               IsUserLocked = s.IsUserLocked 
                           };

            return (IList<UserData>)await UserAuth.ToListAsync();
        }

     

        public class UserData
        {
            public string UserName { get; set; }

            public string Password { get; set; }

            public int IsUserLocked { get; set; }
        }

    }
}
