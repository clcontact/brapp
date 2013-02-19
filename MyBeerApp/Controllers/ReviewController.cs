using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyBeerApp.Models;

namespace MyBeerApp.Controllers
{
    public class ReviewController : Controller
    {
        ReviewRepository reviewRepository = new ReviewRepository();
        //this is to make a drop down list for all the beers?
        BeerRepository beerRepository = new BeerRepository();
        //
        // GET: /Review/

        //[Authorize(Roles="admin")]
        public ActionResult Create(int id)
        {
            if (id == 0)
                return View("NotFound");
            else
            {
                string bn = beerRepository.GetBeerName(id);
                //Response.Write("this is a test:" + beerID);
                Review review = new Review();
                review.BeerID = id;
                ViewBag.BeerID = id;
                review.BeerName = bn;

                return View(review);
            }
        }

        //[AcceptVerbs(HttpVerbs.Post), Authorize]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Review review, int beerID)
        {
            reviewRepository.AddReview(review, beerID);
            reviewRepository.Save();
            return RedirectToAction("Details", new { id = review.ReviewID });
        }
        public ActionResult Index()
        {
            var reviews = reviewRepository.FindAllReviews().ToList();
            return View("Index", reviews);
        }
        public ActionResult Details(int id)
        {
            Review review = reviewRepository.GetBeerReview(id);
            if (review == null)
                return View("NotFound");
            else
                return View("Details", review);


        }
        //[Authorize]
        public ActionResult Edit(int id)
        {
            Review review = reviewRepository.GetBeerReview(id);
            
            //ViewBag.Style = new SelectList(beerRepository.FindAllStyles(), "StyleID", "name", beer.StyleID);
            //ViewBag.Company = new SelectList(beerRepository.FindAllCompanies(), "CompanyID", "name", beer.CompanyID);
            return View(review);
        }

        //[AcceptVerbs(HttpVerbs.Post), Authorize]
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues)
        {
            Review review = reviewRepository.GetBeerReview(id);
            UpdateModel(review);
            reviewRepository.Save();

            return RedirectToAction("Details", new { id = review.ReviewID });
        }


    }
}
