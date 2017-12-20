using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Admin.Service
{
    public class SystemService
    {
        public void CreateEntity()
        {
            new Lights.Framework.Manager.SqlSugarCreateEntity().CreateEntity();
        }
    }
}
