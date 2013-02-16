using System.Web.Mvc;
using MyBeerApp.Models;

namespace MyBeerApp.Models
{
    public class BeerEventFormViewModel
    {
        //public Dinner Dinner { get; private set; }
        public BeerEvent BeerEvent {get; private set;}
        public SelectList Countries { get; private set; }
        public BeerEventFormViewModel(BeerEvent beerEvent)
        {
            BeerEvent = beerEvent;
            //Countries = new SelectList(PhoneValidator.Countries, dinner.Country);
        }
    }
}