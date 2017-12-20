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

            bundles.Add(new StyleBundle("~/bundles/CSS/Skin").Include(
                "~/Content/AdminLTE/dist/css/skins/skin-blue.min.css"
                , "~/Content/AdminLTE/dist/css/skins/skin-red.css"
                , "~/Content/AdminLTE/dist/css/skins/skin-yellow.css"
                , "~/Content/AdminLTE/dist/css/skins/skin-purple.css"
                , "~/Content/AdminLTE/dist/css/skins/skin-green.css"
                , "~/Content/AdminLTE/dist/css/skins/skin-black.css"
                ));
        }
    }
}
