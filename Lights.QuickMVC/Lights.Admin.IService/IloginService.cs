using Lights.Admin.Model;
using Lights.Core.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Admin.IService
{
    public interface IloginService
    {
        LightsResponse AdminLogin(string userName,string PassWord);

        List<V_Admin_RoleMenu> GetAdminPower(int userid);

        List<Tb_Admin_UserRole> GetUserRoleList(int userid);

        Tb_Admin_UserInfo GetUserInfoByID(int userid);

        List<V_Admin_RoleMenu> GetUserPowerList(Tb_Admin_UserInfo userinfo);

        IList<object> GetAdminMenu(List<V_Admin_RoleMenu> powerlist, int parentID);
    }
}
