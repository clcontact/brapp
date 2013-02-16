using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyBeerApp.Models;

namespace MyBeerApp.Controllers
{
    public class ArticleCommentController : Controller
    {
        ArticleCommentRepository articleCommentRepository = new ArticleCommentRepository();
        //
        // GET: /ArticleComment/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ArticleComment(int id)
        {
            //ArticleComment ac = articleCommentRepository.GetSomething(id);
            ViewData["Id"] = id;
            
            return View("Details");
        }

    }
}
