using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;
using MyBeerApp.Models;

namespace MyBeerApp.Models
{
    public class ArticleCommentRepository
    {
        private BeerReviewDataContext db = new BeerReviewDataContext();
        public IQueryable<ArticleComment> GetArticleComments(int articleID)
        {
            //return all the comments
            var retArticleComments = db.ArticleComments.Where(a => a.ArticleID == articleID);
            return retArticleComments;
        }
        //fix this
        public Article GetSomething(int articleID)
        {            
            return db.Articles.Where(a => a.ArticleID == articleID).SingleOrDefault();
        }
        public ArticleComment GetArticleCommentSingle(int articleCommentID)
        {
            //return 1
            return db.ArticleComments.Where(a => a.CommentID == articleCommentID).SingleOrDefault();
        }
        public void AddArticle(ArticleComment ac)
        {
            db.ArticleComments.InsertOnSubmit(ac);
        }
        public void Save()
        {
            db.SubmitChanges();
        }
    }
}