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
    }
}
