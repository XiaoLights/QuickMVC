using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Framework.Manager
{
    public interface IManager
    {
        int Insert<T>(T entity) where T : class, new();

        bool Updata<T>(T entity) where T : class, new();

        bool Delete<T>(T entity) where T : class, new();

        T Get<T>(object id) where T : class, new();
    }
}
