using Microsoft.AspNetCore.Mvc;
using Verto.Models;
using Microsoft.EntityFrameworkCore;

namespace Verto.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;

        public HomeController(ApplicationDbContext context)
        {
            _context = context;
        }

        public async Task<IActionResult> Index()
        {
            // Retrieve homepage content
            var content = GetHomePageContent();

            // Retrieve posts
            // var posts = await _context.Posts.ToListAsync();
            var posts = await _context.Posts.ToListAsync();
            var offers =  await _context.Offers.ToListAsync();

            // Create the ViewModel
            var viewModel = new HomePageViewModel
            {
                HomePageContent = content,
                Posts = posts,
                Offers = offers
            };

            // Pass the ViewModel to the view
            return View(viewModel);
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
