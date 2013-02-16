using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBeerApp.Models
{
    public class MainArticlePage
    {
        public Article Article { get; set; }
        public IQueryable<ArticleComment> ArticleComment { get; set; }
    }
}