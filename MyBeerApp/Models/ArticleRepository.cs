using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBeerApp.Models;

namespace MyBeerApp.Models
{
    public class ArticleRepository
    {
        //this is the interaction with the DB
        private BeerReviewDataContext db = new BeerReviewDataContext();
        public IQueryable<Article> FindAllArticles()
        {
            return db.Articles;
        }
        public Article GetArticle(int id)
        {
            return db.Articles.SingleOrDefault(a => a.ArticleID == id);
        }
        public void AddArticle(Article article)
        {
            db.Articles.InsertOnSubmit(article);
        }
        public void Save()
        {
            db.SubmitChanges();
        }

        //public IEnumerable<Style> FindAllStyles()
        //{
        //    var retStyle = db.Styles.OrderBy(c => c.Name);
        //    return retStyle;
        //}
        public void AddArticleComment(Article article,int id)
        { 
            //copied code
            //review.Beer = db.Beers.Single(f => f.BeerID == beerID);
            //db.Reviews.InsertOnSubmit(review);
        }
    }
}