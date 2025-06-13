using DummyProject.Models;
using Microsoft.EntityFrameworkCore;

namespace DummyProject.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<NewTable> newtable { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasDefaultSchema("public"); // schema PostgreSQL
            base.OnModelCreating(modelBuilder);
        }
    }
}
