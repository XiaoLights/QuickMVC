using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.QuickMVC.AdminModel
{
    public class AdminMenu
    {
        public string id { get; set; }
        public bool isOpen { get; set; }

        public string text { get; set; }
        public string icon { get; set; }
        public string url { get; set; }
        public string targetType { get; set; }
        public IList<AdminMenu> children { get; set; }

    }
}
