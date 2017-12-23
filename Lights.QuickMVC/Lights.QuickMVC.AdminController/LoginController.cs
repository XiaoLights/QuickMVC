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
                List<Tb_Admin_UserRole> urlist = loginservice.GetUserRoleList(userinfo.UserID);
                List<V_Admin_RoleMenu> powerlist = new List<V_Admin_RoleMenu>();
                if (urlist != null && urlist.Count > 0)
                {
                    foreach (Tb_Admin_UserRole ur in urlist)
                    {
                        List<V_Admin_RoleMenu> plist = loginservice.GetAdminPower(ur.RoleID);
                        if (plist != null)
                        {
                            var tmplist = from p in plist where !(from pp in powerlist select pp.MenuID).Contains(p.MenuID) select p;
                            if (tmplist != null)
                            {
                                foreach (var p in tmplist)
                                {
                                    powerlist.Add(p);
                                }
                            }
                        }
                    }
                }

                Session["UserInfo"] = userinfo;
                Session["UserPower"] = powerlist;
                Session["UserMenu"] = GetAdminMenu(powerlist, 0);
            }
            return Json(result);
        }

        public IList<AdminMenu> GetAdminMenu(List<V_Admin_RoleMenu> powerlist, int parentID)
        {
            List<AdminMenu> list = new List<AdminMenu>();
            List<V_Admin_RoleMenu> plist = powerlist.Where(it => it.ParentID == parentID).OrderBy(it => it.Sort).ToList();
            foreach (V_Admin_RoleMenu rm in plist)
            {
                AdminMenu am = new AdminMenu();
                am.id = rm.MenuID.ToString();
                am.text = rm.MenuName;
                am.url = rm.MenuUrl;
                am.icon = rm.MenuIcon;
                am.isOpen = false;
                am.targetType = "iframe-tab";
                am.children = GetAdminMenu(powerlist, rm.MenuID.Value);
                list.Add(am);
            }
            return list;
        }

    }
}
