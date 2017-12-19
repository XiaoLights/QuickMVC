using Lights.Framework.SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Framework.Manager
{
    public class BaseDataManager : IManager
    {
        public string OperateError = "";
        public BaseDataManager() { }
        SqlsugarRepository repository = new SqlsugarRepository();

        public bool Delete<T>(T entity) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                int i = db.Deleteable<T>().Where(entity).ExecuteCommand();
                OperateError = repository._operatorError;
                return i > 0;
            }
        }

        public T Get<T>(object id) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                T entity = db.Queryable<T>().InSingle(id);
                OperateError = repository._operatorError;
                return entity;
            }
        }

        public int Insert<T>(T entity) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                int i = db.Insertable<T>(entity).ExecuteCommand();
                OperateError = repository._operatorError;
                return i;
            }
        }

        public bool Updata<T>(T entity) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                int i = db.Updateable<T>(entity).ExecuteCommand();
                OperateError = repository._operatorError;
                return i > 0;
            }
        }
    }
}
