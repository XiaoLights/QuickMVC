using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Lights.QuickMVC.MyModel;

namespace Lights.QuickMVC.MyController
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ModelDemo model = new ModelDemo
            {
                id = 1,
                name = "肖超"
            };
            return View(model);
        }
    }
}
