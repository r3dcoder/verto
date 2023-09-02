using Microsoft.AspNetCore.Mvc;
using Verto.Models;

namespace Verto.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            // Retrieve homepage content (replace with your data access logic)
            var content = GetHomePageContent();

            // Pass the content to the view
            return View(content);
        }

        public HomePageContent GetHomePageContent()
        {
            var model = new HomePageContent
            {
                Id = 1,
                Title = "Welcome to Our Website",
                Subtitle = "Your Content Management Solution",
                ImagePath = "image.jpg",
                Description = "This is the description of our homepage content.",
                LastUpdated = DateTime.Now
            };
            return model;
        }


    }
}
