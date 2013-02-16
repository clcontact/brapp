using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyBeerApp.Models;


namespace MyBeerApp.Controllers
{
    public class BeerEventController : Controller
    {
        BeerEventRepository beerEventRepository = new BeerEventRepository();

        public ActionResult Index()
        {
            var beerEvents = beerEventRepository.FindUpcomingDinners().ToList();
            return View(beerEvents);
        } 
        // HTTP-GET: /Dinners/Details/2 

        public ActionResult Details(int id)
        {
            BeerEvent beerEvent = beerEventRepository.GetDinner(id);
            if (beerEvent == null)
                return View("NotFound");
            else
                return View( beerEvent);
        }
        public ActionResult Edit(int id)
        {
            BeerEvent beerEvent = beerEventRepository.GetDinner(id);
            
            //old way return View(dinner);
            return View(new BeerEventFormViewModel(beerEvent));
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues)
        {
            BeerEvent beerEvent = beerEventRepository.GetDinner(id);
            try
            {
                UpdateModel(beerEvent);
                beerEventRepository.Save();
                return RedirectToAction("Details", new { id = beerEvent.BeerEventID });

            }
            catch 
            {
                //ModelState.AddRuleViolations(beerEvent.GetRuleViolations());
                return View(new BeerEventFormViewModel(beerEvent));
            }
        }
        public ActionResult Create()
        {
            BeerEvent beerEvent = new BeerEvent()
            {
                EventDate = DateTime.Now.AddDays(7)
            };
            return View(new BeerEventFormViewModel(beerEvent));
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(BeerEvent beerEvent) {
            if(ModelState.IsValid){
                try
                {
                    UpdateModel(beerEvent);
                    beerEventRepository.Add(beerEvent);
                    beerEventRepository.Save();

                    return RedirectToAction("Details", new { id = beerEvent.BeerEventID });
                }
                catch 
                {
                    //ModelState.AddRuleViolations(dinner.GetRuleViolations());
                }
            }
            return  View(new BeerEventFormViewModel(beerEvent));
        
        }
        public ActionResult Delete(int id)
        {
            BeerEvent beerEvent = beerEventRepository.GetDinner(id);
            if (beerEvent == null)
                return View("NotFound");
            else
                return View(beerEvent);
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(int id, string confirmButton)
        {
            BeerEvent beerEvent = beerEventRepository.GetDinner(id);
            if (beerEvent == null)
                return View("NotFound");

            beerEventRepository.Delete(beerEvent);
            beerEventRepository.Save();
            return View("Deleted");
        }
    }




}
