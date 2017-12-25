using Lights.Admin.Model;
using Lights.Core.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Admin.IService
{
    public interface IMenuService
    {
        List<Tb_Admin_Menu> GetMenuPageList(PageParams<Tb_Admin_Menu> param, ref int totalcount);
    }
}
