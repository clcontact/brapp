using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MyBeerApp.Helper;

namespace MyBeerApp.Models
{
    public partial class Review
    {
        public string BeerName { get; set; }
        
        public bool IsValid
        {
            get { return (GetRuleViolations().Count() == 0); }
        }
        public IEnumerable<RuleViolation> GetRuleViolations()
        {
            //add stuff like check for Name
            yield break;
        }
        partial void OnValidate(System.Data.Linq.ChangeAction action)
        {
            if (!IsValid)
                throw new ApplicationException("Rule violations prevent saving");
        }
    }


}