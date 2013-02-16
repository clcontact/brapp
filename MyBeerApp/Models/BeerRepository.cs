using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBeerApp.Models
{
    public class BeerRepository
    {
        //private BeerReviewDataContext db = new BeerReviewDataContext();
        //private BeerToLinqDataContext db = new BeerToLinqDataContext();
        private BeerReviewDataContext db = new BeerReviewDataContext();

        public IQueryable<Beer> FindAllBeers()
        {
            return db.Beers;
        }

        public Beer GetBeer(int beerID)
        {
            return db.Beers.SingleOrDefault(b => b.BeerID == beerID);
        }

        public void Add(Beer beer) {
            db.Beers.InsertOnSubmit(beer);
        }
        public void Save()
        {
            db.SubmitChanges();
        }
        public IEnumerable<Style> FindAllStyles()
        {
            //var retStyle = (from c in db.Styles orderby c.Name select new { c.StyleId, c.Name }).ToArray();
            var retStyle = db.Styles.OrderBy(c => c.Name);
            return retStyle;
           
        }
        public IEnumerable<Company> FindAllCompanies()
        {
            var retCompanies = db.Companies.OrderBy(c => c.Name) ;
            return retCompanies;
        }
        public string GetStyle(int styleID)
        {
            return db.Styles.SingleOrDefault(b => b.StyleId == styleID).ToString();
        }
        public string GetCompany(int companyID)
        {
            return db.Companies.SingleOrDefault(b => b.CompanyId == companyID).ToString();
        }
        public string GetBeerName(int beerID)
        {
            return db.Beers.SingleOrDefault(b => b.BeerID == beerID).Name.ToString();
        }
        //public IEnumerable<Beer> ListAllBeers()
        //{
        //    return db.Beers;
        //}
    }
}