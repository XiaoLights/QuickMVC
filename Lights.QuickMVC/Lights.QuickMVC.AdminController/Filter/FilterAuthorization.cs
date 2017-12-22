using Lights.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace Lights.QuickMVC.AdminController
{
    public class MyAuthorizationAttribute : ActionFilterAttribute
    {
        public bool IsAuth
        {
            get; set;
        }

        #region 事实证明Authorization并不好用
        //public override void OnAuthorization(AuthorizationContext filterContext)
        //{
        //    if (IsAuth)
        //    {
        //        Tb_Admin_UserInfo userinfo = (Tb_Admin_UserInfo)filterContext.HttpContext.Session["UserInfo"];
        //        if (userinfo == null)
        //        {
        //            // filterContext.Result = new RedirectResult("/Admin/Login/Login?Redirect=" + filterContext.HttpContext.Request.Url.Fragment);

        //        }
        //    }
        //    filterContext.HttpContext.Response.Write(IsAuth);
        //    //base.OnAuthorization(filterContext);
        //}
        #endregion

        /// <summary>
        /// 
        /// </summary>
        /// <param name="filterContext"></param>
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (IsAuth)
            {
                base.OnActionExecuting(filterContext);
                if (filterContext.HttpContext.Session["UserInfo"] != null && filterContext.HttpContext.Session["UserPower"] != null&& filterContext.HttpContext.Session["UserMenu"] != null)
                {
                    filterContext.HttpContext.Session["UserInfo"] = filterContext.HttpContext.Session["UserInfo"];
                    filterContext.HttpContext.Session["UserPower"] = filterContext.HttpContext.Session["UserPower"];
                    filterContext.HttpContext.Session.Timeout = 20;
                }
                else
                {
                    HttpCookie cookieName = System.Web.HttpContext.Current.Request.Cookies.Get("sessionId");
                    if (cookieName != null)
                    {

                    }
                    else
                    {
                        //Authority 权限
                        string result = string.Format("<script type='text/javascript'> window.top.location.href ='/Admin/Login/Index" + "?ret=" + filterContext.HttpContext.Request.Url.AbsolutePath + "';</script>");
                        filterContext.Result = new ContentResult() { Content = result };
                        return;
                    }
                }
            }
        }
    }




}
