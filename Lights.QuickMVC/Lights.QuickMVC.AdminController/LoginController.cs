using Lights.Core.Utils;
using System;
using System.Web;
using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    public class LoginController : Controller
    {
        public ActionResult Index()
        {

            HttpCookie cookie = Request.Cookies["qmvc"];
            if (cookie != null)
            {
                ViewBag.UN = cookie["un"];
                ViewBag.PW = cookie["pw"];
                ViewBag.RM = true;
            }
            Response.Cookies.Add(cookie);



            ViewBag.PageTitle = "后台管理系统";
            return View();
        }

        public JsonResult Login(string username, string password, bool? rememberMe)
        {
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                return Json(LightsResponse.GetErrorResponse("请输入用户名和密码"));
            }
            Admin.IService.IloginService loginservice = new Admin.Service.LoginService();
            LightsResponse result = loginservice.AdminLogin(username, password);
            if (result.Success)
            {
                if (rememberMe.HasValue && rememberMe.Value)
                {
                    HttpCookie cookie = new HttpCookie("qmvc");
                    cookie["un"] = username;
                    cookie["pw"] = password;
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }
                Session["UserInfo"] = result.Data;
                Response.Redirect("/Admin/Home/Index");
            }
            return Json(result);
        }
    }
}
