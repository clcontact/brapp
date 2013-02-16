using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyBeerApp.Models
{
    public class ReviewRepository
    {
        private BeerReviewDataContext db = new BeerReviewDataContext();
        
        public IQueryable<Review> FindAllReviews()
        {
            return db.Reviews;
        }
        public Review GetBeerReview(int reviewID)
        {
            return db.Reviews.SingleOrDefault(r => r.ReviewID == reviewID);
        }

        public void AddReview(Review review, int beerID)
        {
            
            review.Beer = db.Beers.Single(f => f.BeerID == beerID);
            
            db.Reviews.InsertOnSubmit(review);
        }
        public void Save()
        {
            db.SubmitChanges();
        }
    }
}