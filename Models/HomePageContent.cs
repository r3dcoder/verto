namespace Verto.Models;

public class HomePageContent
    {
        public int Id { get; set; }

         public string Title { get; set; }

        public string Subtitle { get; set; }

        public string ImagePath { get; set; }

         public string Description { get; set; }
        
        // You can add more properties as needed for your homepage content

        // Example: Date when the content was last updated
        public DateTime LastUpdated { get; set; }
    }
