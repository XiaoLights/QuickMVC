using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Lights.QuickMVC.MyModel;

namespace Lights.QuickMVC.MyController
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ModelDemo model = new ModelDemo
            {
                id = 1,
                name = "你好"
            };
            Lights.Core.Log4net.Log.Info("HomeInfoTest", "测试信息");
            string s = "yh";
            try
            {
                int.Parse(s);
            }
            catch (Exception ex)
            {
                Lights.Core.Log4net.Log.Error("HomeErrorTest", ex);
            }
            return View(model);
        }
    }
}
