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
    public class MenuController : Controller
    {
        IMenuService Service = new Admin.Service.MenuService();
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetMenuList(int pageindex, int pagesize, string sortName, string sortOrder, string SearchKey, string SearchType)
        {
            PageParams<Tb_Admin_Menu> param = new PageParams<Tb_Admin_Menu>();
            param.PageSize = pagesize;
            param.PageIndex = param.GetPageIndex(pageindex, pagesize);

            if (!string.IsNullOrEmpty(sortName))
            {
                param.StrOrderColumns = sortName + " " + sortOrder;
            }
            else {
                param.OrderColumns = it => it.MenuID;
            }
            int totalCount = 0;
            List<Tb_Admin_Menu> list = Service.GetMenuPageList(param, ref totalCount);
            object obj = new { total = totalCount, rows = list };
            return Json(obj);
        }
    }
}
