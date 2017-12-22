using Lights.Admin.Model;
using Lights.Core.Utils;
using Lights.QuickMVC.AdminModel;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    [MyAuthorization(IsAuth = false)]
    public class LoginController : Controller
    {
        [AllowAnonymous]
        public ActionResult Index()
        {
            if (Session["UserInfo"] != null || Session["UserPower"] != null || Session["UserMenu"] != null)
            {
                Session.RemoveAll();
            }
            HttpCookie cookie = Request.Cookies["qmvc"];
            if (cookie != null)
            {
                ViewBag.UN = cookie["un"];
                ViewBag.PW = cookie["pw"];
                ViewBag.RM = true;
            }

            ViewBag.PageTitle = "后台管理系统";
            ViewBag.ReturnUrl = Request.QueryString["ret"];
            return View();
        }

        public JsonResult Login(string username, string password, string rememberMe)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                return Json(LightsResponse.GetErrorResponse("请输入用户名和密码"));
            }
            Admin.IService.IloginService loginservice = new Admin.Service.LoginService();
            LightsResponse result = loginservice.AdminLogin(username, password);
            if (result.Success)
            {
                if (!string.IsNullOrEmpty(rememberMe) && rememberMe == "on")
                {
                    HttpCookie cookie = new HttpCookie("qmvc");
                    cookie["un"] = username;
                    cookie["pw"] = password;
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }
                Tb_Admin_UserInfo userinfo = (Tb_Admin_UserInfo)result.Data;
                List<V_Admin_UserPower> powerlist = loginservice.GetAdminPower(userinfo.UserID);
                Session["UserInfo"] = userinfo;
                Session["UserPower"] = powerlist;
                Session["UserMenu"] = GetAdminMenu(powerlist);
            }
            return Json(result);
        }

        public IList<AdminMenu> GetAdminMenu(List<V_Admin_UserPower> powerlist)
        {
            List<AdminMenu> list = new List<AdminMenu>();


            return list;
        }

    }
}
