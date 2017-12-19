using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Lights.QuickMVC.Web.Startup))]
namespace Lights.QuickMVC.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
