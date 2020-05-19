using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace DollMall.Controllers
{
    public class GoodsController : Controller
    {
        private readonly DataBase.DataContext _context;

        public GoodsController(DataBase.DataContext context) {
            _context = context;
        }

    }
}