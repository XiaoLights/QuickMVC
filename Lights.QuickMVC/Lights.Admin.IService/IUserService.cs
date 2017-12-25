using Lights.Admin.Model;
using Lights.Core.Utils;
using System.Collections.Generic;

namespace Lights.Admin.IService
{
    public interface IUserService
    {
        List<Tb_Admin_UserInfo> GetUserPageList(PageParams<Tb_Admin_UserInfo> param, ref int totalcount);
    }
}
