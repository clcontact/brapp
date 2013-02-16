using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyBeerApp.Models;


namespace MyBeerApp.Controllers
{
    public class ArticleController : Controller
    {
        ArticleRepository articleRepository = new ArticleRepository();
        ArticleCommentRepository articleCommentRepository = new ArticleCommentRepository();
        //
        // GET: /Article/

        public ActionResult Index()
        {
            var article = articleRepository.FindAllArticles();
            return View("Index", article);
        }
        public ActionResult Details(int id)
        {
            Article article = articleRepository.GetArticle(id);
            //article.ArticleComments.Assign();
            MainArticlePage mp = new MainArticlePage();
            mp.Article = article;
            mp.ArticleComment = article.ArticleComments.AsQueryable();
            if (article == null)
                return View("NotFound", article);
            else
                return View("Details", mp);
            //return View("Details", Tuple<article,article.ArticleComments>);
        }

        public ActionResult Edit(int id)
        {
            Article article = articleRepository.GetArticle(id);

            if (article == null)
                return View("NotFound", article);
            else
                return View(article);
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues)
        {
            Article article = articleRepository.GetArticle(id);
            UpdateModel(article);
            articleRepository.Save();
            return RedirectToAction("Details", new { id = article.ArticleID });
        }


        public ActionResult Create()
        {
            Article article = new Article();

            return View(article);
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Article article)
        {
            articleRepository.AddArticle(article);
            articleRepository.Save();
            return RedirectToAction("Details", new { id = article.ArticleID });
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult ArticleCommentCreate(ArticleComment ac)
        {
            articleCommentRepository.AddArticle(ac);
            articleCommentRepository.Save();
            return RedirectToAction("Details", new { id = ac.ArticleID });
        }

    }
}
