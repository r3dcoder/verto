using Microsoft.EntityFrameworkCore;
using Verto.Models;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }

    public DbSet<Posts> Posts { get; set; } // DbSet for "Posts" entity
    
    public DbSet<Offers> Offers { get; set; } // DbSet for "Offers" entity
    public DbSet<ProductCategories> ProductCategories { get; set; } // DbSet for "ProductCategories" entity


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // Configuration for the Posts entity
        modelBuilder.Entity<Posts>()
            .HasKey(p => p.PostID); // "PostID" is the primary key property name

        // Configuration for the Offers entity
        modelBuilder.Entity<Offers>()
            .HasKey(o => o.OfferID); // "OfferID" is the primary key property name

                // Configuration for the ProductCategories entity
        modelBuilder.Entity<ProductCategories>()
            .HasKey(o => o.CategoryID); // "CategoryID" is the primary key property name


    }
}
