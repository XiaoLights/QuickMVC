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
    public class MyAuthorizationAttribute : AuthorizeAttribute, IAuthorizationFilter
    {
        public bool IsAuth = true;
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (IsAuth)
            {
                Tb_Admin_UserInfo userinfo = (Tb_Admin_UserInfo)filterContext.HttpContext.Session["UserInfo"];
                if (userinfo == null)
                {
                    filterContext.HttpContext.Response.Redirect("/Admin/Login/Login?Redirect=" + filterContext.HttpContext.Request.Url.Fragment);
                }
            }

        }
    }




}
