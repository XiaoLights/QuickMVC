using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
           // Response.Redirect("/Admin/Login/Index");
            return View();
        }
    }
}
