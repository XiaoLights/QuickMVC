using Lights.Admin.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Lights.Core.Utils;
using Lights.Framework.Manager;
using Lights.Admin.Model;
namespace Lights.Admin.Service
{
    public class LoginService : IloginService
    {
        IManager manager = new SqlSugarManager();
        public LightsResponse AdminLogin(string userName, string passWord)
        {
            passWord = StringHelper.GetMD5(passWord);
            Tb_Admin_UserInfo userinfo = manager.Get<Tb_Admin_UserInfo>(it => it.UserName == userName && it.PassWord == passWord);
            if (userinfo != null)
            {
                return LightsResponse.GetResponse(userinfo);
            }
            else
            {
                return LightsResponse.GetErrorResponse("用户名或者密码不正确");
            }
            throw new NotImplementedException();
        }

        public List<V_Admin_UserPower> GetAdminPower(int userid)
        {
            return manager.GetList<V_Admin_UserPower>(it => it.UserID == userid);
        }
    }
}
