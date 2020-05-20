using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using DollMallApp.Controllers;
using DollMallApp.Models;

namespace DollMallApp.Controllers
{
    [ApiController]
    [Route("Api/[controller]/[action]")]
    public class AdminUserController: Controller
    {
        private readonly DataContext _context;

        public AdminUserController(DataContext context) {
            _context = context;
        }

        [HttpPost]
        public async Task<ResultModel<bool>> Login(AdminUser user) {
            _context.AdminUsers.Add(user);
            await _context.SaveChangesAsync();
            return new ResultModel<bool> { Message = "Success", Code = 200, Data = false };
        }
    }
}
