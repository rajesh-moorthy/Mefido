using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using MefidoServices.Models;
using Microsoft.EntityFrameworkCore;

namespace MefidoServices.Controllers
{

    //[Route("api/[controller]")]
    public class BusinessEnquiryController : ControllerBase
    {
        private readonly MefidoContext db = new MefidoContext();

        [HttpGet("api/GetOpenBusinessEnquiries")]
        public async Task<IList<Businessenquiries>> GetOpenBusinessEnquiries()
        {
            var enquiries = db.Businessenquiries.Where(u => u.EnquiryStatus == "Open");
            return await enquiries.ToListAsync();
        }


        [HttpPost]
        public async Task
            CreateEnquiry(Businessenquiries Enquiries)
        {
            db.Businessenquiries.Add(Enquiries);
            await db.SaveChangesAsync();
        }

        // DELETE: api/Doctorprofiles/5
        [HttpDelete("{id}")]
        public async Task<Businessenquiries> DeleteEnquiry(int id)
        {
            var enquiry = await db.Businessenquiries.FindAsync(id);
           

            db.Businessenquiries.Remove(enquiry);
            await db.SaveChangesAsync();

            return enquiry;
        }

    }
}
