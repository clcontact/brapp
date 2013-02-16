using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBeerApp.Models;

namespace MyBeerApp.Models
{
    public class BeerEventRepository
    {
        private BeerReviewDataContext db = new BeerReviewDataContext();

        public IQueryable<BeerEvent> FindAllDinners()
        {
            return db.BeerEvents;
        }

        public IQueryable<BeerEvent> FindUpcomingDinners()
        {
            return from dinner in db.BeerEvents
                   where dinner.EventDate > DateTime.Now
                   orderby dinner.EventDate
                   select dinner;
        }

        public BeerEvent GetDinner(int id)
        {
            return db.BeerEvents.SingleOrDefault(d => d.BeerEventID == id);
        }

        public void Add(BeerEvent dinner)
        {
            db.BeerEvents.InsertOnSubmit(dinner);
        }
        public void Delete(BeerEvent dinner)
        {
            db.RSVPs.DeleteAllOnSubmit(dinner.RSVPs);
            db.BeerEvents.DeleteOnSubmit(dinner);
        }
        //public IQueryable<BeerEvent> FindByLocation(float latitude, float longitude)
        //{
        //    var dinners = from dinner in FindUpcomingDinners()
        //                  join i in db.NearestDinners(latitude, longitude)
        //                  on dinner.DinnerID equals i.DinnerID
        //                  select dinner;
        //    return dinners;
        //}
        public void Save()
        {
            db.SubmitChanges();
        }
    }
}