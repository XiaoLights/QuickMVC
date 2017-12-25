using Lights.Admin.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Lights.Admin.Model;
using Lights.Core.Utils;
using Lights.Framework.Manager;

namespace Lights.Admin.Service
{
    public class MenuService : IMenuService
    {
        IManager manager = new SqlSugarManager();
        public List<Tb_Admin_Menu> GetMenuPageList(PageParams<Tb_Admin_Menu> param, ref int totalcount)
        {
            return manager.GetPageList<Tb_Admin_Menu>(param, ref totalcount);
        }
    }
}
