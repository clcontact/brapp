using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyBeerApp.Models;
namespace MyBeerApp.Controllers
{
    public class BeerController : Controller
    {
        BeerRepository beerRepository = new BeerRepository();
        //
        // GET: /Beer/

        public ActionResult Index()
        {
            var beers = beerRepository.FindAllBeers().ToList();
            return View("Index",beers);
        }

        public ActionResult Details(int id)
        {
            Beer beer = beerRepository.GetBeer(id);
            if(beer == null)
                return View("NotFound");
            else
                return View("Details",beer);

            
        }
        //[Authorize]
        public ActionResult Edit(int id)
        {
            Beer beer = beerRepository.GetBeer(id);
            ViewBag.Style = new SelectList(beerRepository.FindAllStyles(), "StyleID", "name",beer.StyleID);
            ViewBag.Company = new SelectList(beerRepository.FindAllCompanies(), "CompanyID", "name", beer.CompanyID);
            return View(beer);
        }

        //[AcceptVerbs(HttpVerbs.Post), Authorize]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id,FormCollection formValues)
        {
            Beer beer = beerRepository.GetBeer(id);
            UpdateModel(beer);
            beerRepository.Save();

            return RedirectToAction("Details", new { id = beer.BeerID });
        }
        //[Authorize(Roles="admin")]
        public ActionResult Create()
        {
            Beer beer = new Beer();
            ViewBag.Style = new SelectList(beerRepository.FindAllStyles(), "StyleID", "name");
            ViewBag.Company = new SelectList(beerRepository.FindAllCompanies(), "CompanyID", "name");

            return View(beer);

        }

        //[AcceptVerbs(HttpVerbs.Post), Authorize]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Beer beer)
        {
            
            beerRepository.Add(beer);
            beerRepository.Save();
            return RedirectToAction("Details", new { id = beer.BeerID });
            
        }

    }
}
