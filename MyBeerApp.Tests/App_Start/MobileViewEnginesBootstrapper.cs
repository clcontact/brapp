using System.Web.Mvc;
using MobileViewEngines.MVC3;
 
[assembly: WebActivator.PreApplicationStartMethod(typeof(MyBeerApp.Tests.MobileViewEngines), "Start")]
namespace MyBeerApp.Tests {
    public static class MobileViewEngines{
        public static void Start() 
        {
            ViewEngines.Engines.Insert(0, new MobileCapableRazorViewEngine());
        }
    }
}