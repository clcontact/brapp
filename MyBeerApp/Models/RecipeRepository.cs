using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBeerApp.Models;

namespace MyBeerApp.Models
{
    public class RecipeRepository
    {
        //this is the interaction with the DB
        private BeerReviewDataContext db = new BeerReviewDataContext();
        public IQueryable<Recipe> FindAllRecipe()
        {
            return db.Recipes;
        }
        public Recipe GetRecipe(int id)
        {
            return db.Recipes.SingleOrDefault(r => r.RecipeID == id);
        }
        public void AddRecipe(Recipe recipe)
        {
            db.Recipes.InsertOnSubmit(recipe);
        }
        public void Save()
        {
            db.SubmitChanges();
        }
        public IEnumerable<Style> FindAllStyles()
        {
            var retStyle = db.Styles.OrderBy(c => c.Name);
            return retStyle;
        }
    }
}