using OnlineMallManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace OnlineMallManagement.Areas.Admin.Controllers
{
    [Authorize]
    public class DashboardController : Controller
    {
        private DBOnlineMallEntities dbContext = new DBOnlineMallEntities();
        [Authorize(Roles = "Admin,User,Customer")]
        public ActionResult Index()
        {
            HttpContext.Application["favicon"] = dbContext.Configs.Find(15).value;
            HttpContext.Application["logo"] = dbContext.Configs.Find(16).value;
            return View();
        }
    }
}