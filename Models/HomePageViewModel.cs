 
using System;
using System.Collections.Generic;
using Verto.Models; 

namespace Verto.Models
{
    public class HomePageViewModel
    {
        public HomePageContent HomePageContent { get; set; }
        public List<Posts> Posts { get; set; }
        public List<Offers> Offers { get; set; }
        public List<ProductCategories> ProductCategories { get; set; }
    }
}
