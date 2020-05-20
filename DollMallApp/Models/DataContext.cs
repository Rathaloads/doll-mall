using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace DollMallApp.Models
{
    public class DataContext: DbContext
    {
        public DataContext(DbContextOptions options) : base(options) { }

        public DbSet<Category> Categorys { get; set; }
        public DbSet<AdminUser> AdminUsers { get; set; }
    }
}
