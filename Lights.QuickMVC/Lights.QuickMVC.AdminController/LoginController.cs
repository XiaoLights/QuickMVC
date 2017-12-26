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

            HttpCookie cookielogin = new HttpCookie("lginfo");
            cookielogin.Expires = DateTime.Now.AddDays(-7);
            Response.Cookies.Add(cookielogin);

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
            if (password.StartsWith("enc_"))
            {
                password = password.Replace("enc_", "");
                password = StringHelper.Decrypt(password);
            }
            Admin.IService.IloginService loginservice = new Admin.Service.LoginService();
            LightsResponse result = loginservice.AdminLogin(username, password);
            if (result.Success)
            {
                if (!string.IsNullOrEmpty(rememberMe) && rememberMe == "on")
                {
                    HttpCookie cookie = new HttpCookie("qmvc");
                    cookie["un"] = username;
                    cookie["pw"] = "enc_" + StringHelper.Encrypt(password);
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }
                Tb_Admin_UserInfo userinfo = (Tb_Admin_UserInfo)result.Data;
                List<V_Admin_RoleMenu> powerlist = loginservice.GetUserPowerList(userinfo);
                Session["UserInfo"] = userinfo;
                Session["UserPower"] = powerlist;
                Session["UserMenu"] = loginservice.GetAdminMenu(powerlist, 0);

                HttpCookie cookielogin = new HttpCookie("lginfo");
                cookielogin["uname"] = username;
                cookielogin["uid"] = StringHelper.Encrypt(userinfo.UserID.ToString()); ;
                cookielogin.Expires = DateTime.Now.AddDays(1);
                Response.Cookies.Add(cookielogin);
            }
            return Json(result);
        }



    }
}
