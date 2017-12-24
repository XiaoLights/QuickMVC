using Lights.Framework.SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;

namespace Lights.Framework.Manager
{
    public class SqlSugarManager : IManager
    {
        public string OperateError = "";
        public SqlSugarManager() { }
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

        /// <summary>
        /// 获取实体对象
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="id"></param>
        /// <returns></returns>
        public T Get<T>(object id) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                T entity = db.Queryable<T>().InSingle(id);
                OperateError = repository._operatorError;
                return entity;
            }
        }

        public T Get<T>(System.Linq.Expressions.Expression<Func<T, bool>> expr) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                T entity = db.Queryable<T>().Where(expr).First();
                OperateError = repository._operatorError;
                return entity;
            }
        }

        public List<T> GetList<T>(Expression<Func<T, bool>> expr) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                List<T> list = db.Queryable<T>().Where(expr).ToList();
                OperateError = repository._operatorError;
                return list;
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

        public List<T> GetAll<T>() where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                return db.Queryable<T>().ToList();
            }

        }
    }
}
