using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using DollMallApp.Models;

namespace DollMallApp.Controllers
{
    [ApiController]
    [Route("Api/[controller]/[action]")]
    public class ProductController : Controller
    {
        private readonly DataContext _context;

        public ProductController(DataContext context) {
            _context = context;
        }
        public ResultModel<List<Category>> GetList() {
            var list = _context.Categorys.ToList();

            return new ResultModel<List<Category>> { Message = "成功", Code = 200, Data = list };
        }
    }
}