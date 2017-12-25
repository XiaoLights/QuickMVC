using Lights.Admin.IService;
using Lights.Admin.Model;
using Lights.Core.Utils;
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

        public JsonResult GetUserList(int limit, int offset, string userName, string orderColomn)
        {
            PageParams<Tb_Admin_UserInfo> param = new PageParams<Tb_Admin_UserInfo>();
            param.PageSize = limit;
            param.PageIndex = param.GetPageIndex(offset, limit);
            param.OrderColumns = it => it.CreateDate;
            int totalCount = 0;
            List<Tb_Admin_UserInfo> list = userService.GetUserPageList(param, ref totalCount);
            object obj = new { total = totalCount, rows = list };
            return Json(obj);
        }
    }
}
