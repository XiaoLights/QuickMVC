using Lights.Admin.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Admin.IService
{
    public interface IUserService
    {
        List<Tb_Admin_UserInfo> GetUserList();
    }
}
