using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.QuickMVC.AdminModel
{
    public class AdminMenu
    {
        public string Menuname { get; set; }
        public string MenuIcon { get; set; }
        public string MenuUrl { get; set; }
        public int Sort { get; set; }
        public IList<AdminMenu> Child { get; set; }

    }
}
