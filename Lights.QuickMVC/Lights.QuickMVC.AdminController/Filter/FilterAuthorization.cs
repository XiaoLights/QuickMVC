using Lights.Admin.IService;
using Lights.Admin.Model;
using Lights.Core.Utils;
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
                if (filterContext.HttpContext.Session["UserInfo"] != null && filterContext.HttpContext.Session["UserPower"] != null && filterContext.HttpContext.Session["UserMenu"] != null)
                {
                    filterContext.HttpContext.Session["UserInfo"] = filterContext.HttpContext.Session["UserInfo"];
                    filterContext.HttpContext.Session["UserPower"] = filterContext.HttpContext.Session["UserPower"];
                    filterContext.HttpContext.Session.Timeout = 20;
                }
                else
                {
                    HttpCookie cookieName = System.Web.HttpContext.Current.Request.Cookies.Get("lginfo");
                    if (cookieName != null)
                    {
                        //filterContext.HttpContext.Session["UserInfo"] = filterContext.HttpContext.Session["UserInfo"];
                        //filterContext.HttpContext.Session["UserPower"] = filterContext.HttpContext.Session["UserPower"];
                        string userid = cookieName["uid"];
                        userid = StringHelper.Decrypt(userid);
                        int adminid = 0;
                        if (int.TryParse(userid, out adminid))
                        {
                            IloginService service = new Admin.Service.LoginService();
                            Tb_Admin_UserInfo admininfo = service.GetUserInfoByID(adminid);
                            if (admininfo != null)
                            {
                                List<V_Admin_RoleMenu> powerlist = service.GetUserPowerList(admininfo);
                                filterContext.HttpContext.Session["UserInfo"] = admininfo;
                                filterContext.HttpContext.Session["UserPower"] = powerlist;
                                filterContext.HttpContext.Session["UserMenu"] = service.GetAdminMenu(powerlist, 0);
                            }
                            else
                            {
                                Redirect(filterContext);
                            }
                        }
                        else
                        {
                            Redirect(filterContext);
                        }
                    }
                }
            }
        }

        private void Redirect(ActionExecutingContext filterContext)
        {
            //Authority 权限
            string result = string.Format("<script type='text/javascript'> window.top.location.href ='/Admin/Login/Index" + "?ret=" + filterContext.HttpContext.Request.Url.AbsolutePath + "';</script>");
            filterContext.Result = new ContentResult() { Content = result };
            return;
        }




    }
