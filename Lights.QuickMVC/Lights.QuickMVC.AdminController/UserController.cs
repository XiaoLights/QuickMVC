using Lights.Admin.IService;
using Lights.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    public class UserController : Controller
    {
        IUserService userService = new Admin.Service.UserService();
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetUserList(int limit, int offset)
        {
            List<Tb_Admin_UserInfo> list = userService.GetUserList();
            object obj = new { total = 1, rows = list };
            return Json(obj);
        }
    }
}
