using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    public class LoginController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.PageTitle = "后台管理系统";
            return View();
        }

        public JsonResult Login()
        {

            return Json("");
        }
    }
}
