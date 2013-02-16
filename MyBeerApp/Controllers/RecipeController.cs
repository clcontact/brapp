using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyBeerApp.Models;
using MyBeerApp.Helper;

namespace MyNerdDinner.Controllers
{
    public class RecipeController : Controller
    {
        RecipeRepository recipeRepository = new RecipeRepository();
        //
        // GET: /Recipe/

        public ActionResult Index()
        {
            var recipe = recipeRepository.FindAllRecipe();
            return View("Index",recipe);
        }
        public ActionResult Details(int id)
        {
            Recipe recipe = recipeRepository.GetRecipe(id);
            if (recipe == null)
                return View("NotFound");
            else
                return View("Details", recipe);
        }
        public ActionResult Edit(int id)
        {
            Recipe recipe = recipeRepository.GetRecipe(id);
            ViewBag.Style = new SelectList(recipeRepository.FindAllStyles(), "StyleID", "name", recipe.StyleID);
            return View(recipe);
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues)
        {
            Recipe recipe = recipeRepository.GetRecipe(id);
            UpdateModel(recipe);
            recipeRepository.Save();
            return RedirectToAction("Details", new { id = recipe.RecipeID });
        }

        
        public ActionResult Create()
        {
            Recipe recipe = new Recipe();
            ViewBag.Style = new SelectList(recipeRepository.FindAllStyles(), "StyleID", "name");
            return View(recipe);
        }
        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Recipe recipe)
        {
            recipeRepository.AddRecipe(recipe);
            recipeRepository.Save();
            return RedirectToAction("Details", new { id = recipe.RecipeID });
        }

    }
}
