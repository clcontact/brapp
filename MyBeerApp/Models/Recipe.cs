using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using MyBeerApp.Helper;

namespace MyNerdDinner.Models
{
    public partial class Recipe
    {
        public bool IsValid
        {
            get { return (GetRuleViolations().Count() == 0); }
        }
        public IEnumerable<RuleViolation> GetRuleViolations()
        {
            yield break;
        }
        //partial void OnValidate(System.Data.Linq.ChangeAction action)
        //{
        //    if (!IsValid)
        //        throw new ApplicationException("Rule Violations prevent saving");
        //}
    }
}