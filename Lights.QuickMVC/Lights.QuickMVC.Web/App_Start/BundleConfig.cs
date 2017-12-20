using System.Web;
using System.Web.Optimization;

namespace Lights.QuickMVC.Web
{
    public class BundleConfig
    {
        // 有关绑定的详细信息，请访问 http://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/bundles/CorePlugins").Include(
                "~/Content/metronic_v4.5.2/theme/assets/global/plugins/jquery.min.js"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/bootstrap/js/bootstrap.min.js"
                ,"~/Content/metronic_v4.5.2/theme/assets/global/plugins/js.cookie.min.js"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/jquery.blockui.min.js"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/uniform/jquery.uniform.min.js"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"
                ));
            bundles.Add(new ScriptBundle("~/bundles/GlobalStyles").Include(
                "~/Content/metronic_v4.5.2/theme/assets/global/plugins/font-awesome/css/font-awesome.min.css"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/bootstrap/css/bootstrap.min.css"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/uniform/css/uniform.default.min.css"
                , "~/Content/metronic_v4.5.2/theme/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"
                ));
        }
    }
}
