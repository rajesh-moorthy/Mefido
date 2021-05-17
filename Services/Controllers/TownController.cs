﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using MefidoServices.Models;
using MefidoServices.Repository;

namespace MefidoServices.Controllers
{

    public class TownController : ControllerBase
    {
        CommonLibrary Cl = new CommonLibrary();
        [HttpGet("api/GetTowns")]
        public List<City> GetActiveTowns()
        {
            try
            {
                var dbContext = new MefidoContext();
                var town = dbContext.City.Where(u => u.Active == "Y");
                return town.ToList();
            }
            catch (Exception ex)
            {
                Cl.InsertLog(ex.Message);
                return null;
            }
        }

        [HttpGet("api/GetActiveTownsByState/{stateId}")]
        public List<City> GetActiveTownsByState(string stateId)
        {
            try
            {
                var dbContext = new MefidoContext();
                var town = dbContext.City.Where(u => u.Active == "Y" && u.StateID == stateId);
                return town.ToList();
            }
            catch (Exception ex)
            {
                Cl.InsertLog(ex.Message);
                return null;
            }
        }
        [HttpGet("api/GetCountries")]
        public List<Country> GetActiveCountries()
        {
            try
            {
                var dbContext = new MefidoContext();
                var ctry = dbContext.Country.Where(u => u.Active == "Y");
                return ctry.ToList();
            }
            catch (Exception ex)
            {

                Cl.InsertLog(ex.Message);
                return null;
            }
        }

        [HttpGet("api/GetActiveStatesByCountry/{countryId}")]
        public List<State> GetActiveStatesByCountry(int countryId)
        {
            try
            {
                var dbContext = new MefidoContext();
                var state = dbContext.State.Where(u => u.Active == "Y" && u.CountryId == countryId);
                return state.ToList();
            }
            catch (Exception ex)
            {
                Cl.InsertLog(ex.Message);
                return null;
            }
        }
    }
}