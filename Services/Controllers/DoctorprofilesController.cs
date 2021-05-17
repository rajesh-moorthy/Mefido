using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MefidoServices.Models;

namespace MefidoServices.Controllers
{
   
    public class DoctorprofilesController : ControllerBase
    {
        private readonly MefidoContext _context;

        public DoctorprofilesController(MefidoContext context)
        {
            _context = context;
        }

        // GET: api/Doctorprofiles
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Doctorprofile>>> GetDoctorprofile()
        {
            return await _context.Doctorprofile.ToListAsync();
        }

        // GET: api/Doctorprofiles/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Doctorprofile>> GetDoctorprofile(int id)
        {
            var doctorprofile = await _context.Doctorprofile.FindAsync(id);

            if (doctorprofile == null)
            {
                return NotFound();
            }

            return doctorprofile;
        }

        // PUT: api/Doctorprofiles/5
        [HttpPut("{id}")]
        public async Task<IActionResult> PutDoctorprofile(int id, Doctorprofile doctorprofile)
        {
            if (id != doctorprofile.DocProfileId)
            {
                return BadRequest();
            }

            _context.Entry(doctorprofile).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!DoctorprofileExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Doctorprofiles
        [HttpPost]
        public async Task<ActionResult<Doctorprofile>> PostDoctorprofile(Doctorprofile doctorprofile)
        {
            _context.Doctorprofile.Add(doctorprofile);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (DoctorprofileExists(doctorprofile.DocProfileId))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetDoctorprofile", new { id = doctorprofile.DocProfileId }, doctorprofile);
        }

        // DELETE: api/Doctorprofiles/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<Doctorprofile>> DeleteDoctorprofile(int id)
        {
            var doctorprofile = await _context.Doctorprofile.FindAsync(id);
            if (doctorprofile == null)
            {
                return NotFound();
            }

            _context.Doctorprofile.Remove(doctorprofile);
            await _context.SaveChangesAsync();

            return doctorprofile;
        }

        private bool DoctorprofileExists(int id)
        {
            return _context.Doctorprofile.Any(e => e.DocProfileId == id);
        }
    }
}
