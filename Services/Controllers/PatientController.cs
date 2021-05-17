using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MefidoServices.Models;
using Microsoft.EntityFrameworkCore;

namespace MefidoServices.Controllers
{
    public class PatientController : ControllerBase
    {


        [HttpGet("api/GetPatientsByCity/{City}")]
        public async Task<IList<PatientData>> GetPatientsByCity(int City)
        {

            var db = new MefidoContext();
            var patient = from s in db.Patient
                          join c in db.City on s.CityId equals c.CityId
                          where s.CityId == City
                          select new PatientData()
                          {
                              PatientId = s.PatientId,
                              FirstName = s.FirstName,
                              MiddleName = s.MiddleName,
                              LastName = s.LastName,
                              Address = s.Address,
                              CityId = s.CityId,
                              CityName = c.Village,
                              StateId = c.StateID,
                              StateName = c.State,
                              MobileNumber = s.MobileNumber,
                              EmailId = s.EmailId,
                              PatientPhoto = s.PatientPhoto
                          };

            return (IList<PatientData>)await patient.ToListAsync();
        }

        [HttpGet("api/GetPatientsByEmailId/{EmailId}")]
        public async Task<IList<PatientData>> GetPatientsByEmailId(string EmailId)
        {

            var db = new MefidoContext();
            var patient = from s in db.Patient
                          join c in db.City on s.CityId equals c.CityId
                          where s.EmailId == EmailId
                          select new PatientData()
                          {
                              PatientId = s.PatientId,
                              FirstName = s.FirstName,
                              MiddleName = s.MiddleName,
                              LastName = s.LastName,
                              Address = s.Address,
                              CityId = s.CityId,
                              CityName = c.Village,
                              StateId = c.StateID,
                              StateName = c.State,
                              MobileNumber = s.MobileNumber,
                              EmailId = s.EmailId,
                              PatientPhoto = s.PatientPhoto
                          };

            return (IList<PatientData>)await patient.ToListAsync();
        }

        [HttpGet("api/GetPatientsByPatientId/{PatientId}")]
        public async Task<IList<PatientData>> GetPatientsByPatientId(int PatientId)
        {

            var db = new MefidoContext();
            var patient = from s in db.Patient
                          join c in db.City on s.CityId equals c.CityId
                          where s.PatientId == PatientId
                          select new PatientData()
                          {
                              PatientId = s.PatientId,
                              FirstName = s.FirstName,
                              MiddleName = s.MiddleName,
                              LastName = s.LastName,
                              Address = s.Address,
                              CityId = s.CityId,
                              CityName = c.Village,
                              StateId = c.StateID,
                              StateName = c.State,
                              MobileNumber = s.MobileNumber,
                              EmailId = s.EmailId,
                              PatientPhoto = s.PatientPhoto
                          };

            
            return (IList<PatientData>)await patient.ToListAsync();
        }

        [HttpGet("api/GetPatientsByMobileNumber/{Mobile}")]
        public async Task<IList<PatientData>> GetPatientsByMobileNumber(string Mobile)
        {
            var db = new MefidoContext();
            var patient = from s in db.Patient
                          join c in db.City on s.CityId equals c.CityId
                          where s.MobileNumber == Mobile
                          select new PatientData()
                          {
                              PatientId = s.PatientId,
                              FirstName = s.FirstName,
                              MiddleName = s.MiddleName,
                              LastName = s.LastName,
                              Address = s.Address,
                              CityId = s.CityId,
                              CityName = c.Village,
                              StateId = c.StateID,
                              StateName = c.State,
                              MobileNumber = s.MobileNumber,
                              EmailId = s.EmailId,
                              PatientPhoto = s.PatientPhoto
                          };

            // patient = db.Patient.Where(u => u.MobileNumber == Mobile);

            return (IList<PatientData>)await patient.ToListAsync();
        }


        [HttpPost("api/CreatePatient/{pat}")]
        public async Task CreatePatient(Patient pat)
        {
            var db = new MefidoContext();
            await db.Patient.AddAsync(pat);
            await db.SaveChangesAsync();
        }

        // [HttpPost]

        //// DELETE: api/DeletePatient/5
        //[HttpDelete("{id}")]
        //public async Task DeletePatient(int id)
        //{
        //    var pat = await db.Patient.FindAsync(id);
        //    db.Patient.Remove(pat);
        //    await db.SaveChangesAsync();
        //}
    }

    public class PatientData
    {

        public int PatientId { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }

        public string PatientName
        {
            get { return FirstName + " " + MiddleName + " " + LastName; }
        }
        public string Address { get; set; }
        public int? CityId { get; set; }

        public string CityName { get; set; }
        public string StateId { get; set; }

        public string StateName { get; set; }
        public string MobileNumber { get; set; }
        public string CountryCode { get; set; }

        public string CountryName { get; set; }
        public string EmailId { get; set; }
        public DateTime CreatedOn { get; set; }
        public byte[] PatientPhoto { get; set; }
    }


}




