using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyBeerApp.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "A Beerfect place to learn, find explore about beer!!";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Beer is a wonderful gift.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Buy me a round.";

            return View();
        }
    }
}
