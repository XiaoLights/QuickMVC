using Lights.Admin.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Lights.Admin.Model;
using Lights.Framework.Manager;
using Lights.Core.Utils;

namespace Lights.Admin.Service
{
    public class UserService : IUserService
    {
        IManager manager = new SqlSugarManager();
        public List<Tb_Admin_UserInfo> GetUserPageList(PageParams<Tb_Admin_UserInfo> param, ref int totalcount)
        {
            return manager.GetPageList<Tb_Admin_UserInfo>(param,ref totalcount);
        }
    }
}
