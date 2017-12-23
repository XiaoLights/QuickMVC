using System.Web;
using System.Web.Mvc;

namespace Lights.QuickMVC.Web2
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new AdminController.MyAuthorizationAttribute() { IsAuth = true });
        }
    }
}
