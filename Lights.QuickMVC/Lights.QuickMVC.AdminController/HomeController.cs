using Lights.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    public class HomeController : BaseAdminController
    {
        public ActionResult Index()
        {
            //Tb_Admin_UserInfo userinfo = (Tb_Admin_UserInfo)Session["UserInfo"];
            //if (userinfo == null)
            //{
            //    Response.Redirect("/Admin/Login/Login?Redirect=" + Request.Url.Fragment);
            //}
            return View();
        }

        public ActionResult Welcome()
        {
            return View();
        }
    }
}
