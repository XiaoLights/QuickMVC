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

        }

        public List<V_Admin_RoleMenu> GetAdminPower(int roleID)
        {
            return manager.GetList<V_Admin_RoleMenu>(it => it.RoleID == roleID);
        }

        public Tb_Admin_UserInfo GetUserInfoByID(int userid)
        {
            Tb_Admin_UserInfo userinfo = manager.Get<Tb_Admin_UserInfo>(it => it.UserID == userid);
            return userinfo;
        }

        public List<Tb_Admin_UserRole> GetUserRoleList(int userid)
        {
            return manager.GetList<Tb_Admin_UserRole>(it => it.UserID == userid);
        }

        public List<V_Admin_RoleMenu> GetUserPowerList(Tb_Admin_UserInfo userinfo)
        {
            List<Tb_Admin_UserRole> urlist = GetUserRoleList(userinfo.UserID);
            List<V_Admin_RoleMenu> powerlist = new List<V_Admin_RoleMenu>();
            if (urlist != null && urlist.Count > 0)
            {
                foreach (Tb_Admin_UserRole ur in urlist)
                {
                    List<V_Admin_RoleMenu> plist = GetAdminPower(ur.RoleID);
                    if (plist != null)
                    {
                        var tmplist = from p in plist where !(from pp in powerlist select pp.MenuID).Contains(p.MenuID) select p;
                        if (tmplist != null)
                        {
                            foreach (var p in tmplist)
                            {
                                powerlist.Add(p);
                            }
                        }
                    }
                }
            }
            return powerlist;
        }

        public IList<object> GetAdminMenu(List<V_Admin_RoleMenu> powerlist, int parentID)
        {
            List<object> list = new List<object>();
            List<V_Admin_RoleMenu> plist = powerlist.Where(it => it.ParentID == parentID).OrderBy(it => it.Sort).ToList();
            foreach (V_Admin_RoleMenu rm in plist)
            {
                object am = new
                {
                    id = rm.MenuID.ToString(),
                    text = rm.MenuName,
                    url = rm.MenuUrl,
                    icon = rm.MenuIcon,
                    isOpen = false,
                    targetType = "iframe-tab",
                    children = GetAdminMenu(powerlist, rm.MenuID.Value)
                };
                list.Add(am);
            }
            return list;
        }
    }
}
