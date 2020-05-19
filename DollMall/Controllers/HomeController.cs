using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using DollMall.DataBase.Entity;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace DollMall.Controllers
{
    public class HomeController : Controller
    {
        private readonly DataBase.DataContext _context;

        public HomeController(DataBase.DataContext context) {
            _context = context;
        }

        // GET: /<controller>/
        public async Task<IActionResult> Index()
        {
            T_Goods goods = new T_Goods();
            goods.GoodName = "测试添加一个物品";
            goods.CategoryId = 0;
            goods.Price = 100m;

            _context.T_Goods.Add(goods);
            await _context.SaveChangesAsync();

            //_context.T_Goods
            return View();
        }
    }
}
