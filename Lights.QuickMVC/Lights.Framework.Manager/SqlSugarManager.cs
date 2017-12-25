using Lights.Framework.SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;
using SqlSugar;
using Lights.Core.Utils;

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

        public List<T> GetPageList<T>(int pageIndex, int pageSize,
            Expression<Func<T, object>> orderby, int orderType,
            Expression<Func<T, bool>> where, ref int totalCount) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                List<T> list = db.Queryable<T>().OrderBy(orderby, (OrderByType)orderType).Where(where).ToPageList(pageIndex, pageSize, ref totalCount).ToList();
                return list;
            }
        }

        public List<T> GetPageList<T>(int pageIndex, int pageSize, string orderBy, Expression<Func<T, bool>> where, ref int totalCount) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                List<T> list = db.Queryable<T>().OrderBy(orderBy).Where(where).ToPageList(pageIndex, pageSize, ref totalCount).ToList();
                return list;
            }
        }

        public List<T> GetPageList<T>(int pageIndex, int pageSize, string orderBy, string WhereStr, Expression<Func<T, bool>> where, ref int totalCount) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                List<T> list = db.Queryable<T>().OrderBy(orderBy).Where(WhereStr).Where(where).ToPageList(pageIndex, pageSize, ref totalCount).ToList();
                return list;
            }
        }

        public List<T> GetPageList<T>(int pageIndex, int pageSize, string orderBy, string WhereStr, List<Expression<Func<T, bool>>> wheres, ref int totalCount) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                var queryable = db.Queryable<T>();
                queryable = queryable.OrderBy(orderBy);
                queryable = queryable.Where(WhereStr);
                if (wheres.Count > 0)
                {
                    foreach (Expression<Func<T, bool>> exp in wheres)
                    {
                        queryable = queryable.Where(exp);
                    }
                }
                List<T> list = queryable.ToPageList(pageIndex, pageSize, ref totalCount).ToList();
                return list;
            }
        }

        public List<T> GetPageList<T>(PageParams<T> param, ref int totalCount) where T : class, new()
        {
            using (var db = repository.GetInstance())
            {
                var queryable = db.Queryable<T>();
                if (!string.IsNullOrEmpty(param.WhereSql))
                {
                    queryable = queryable.Where(param.WhereSql);
                }
                if (param.Wheres != null)
                {
                    foreach (var where in param.Wheres)
                    {
                        queryable = queryable.Where(where);
                    }
                }
                if (param.Where != null)
                {
                    queryable = queryable.Where(param.Where);
                }
                if (param.OrderColumns == null && string.IsNullOrEmpty(param.StrOrderColumns))
                {
                    throw new Exception("分页必须要排序。");
                }

                if (!string.IsNullOrEmpty(param.StrOrderColumns))
                {
                    queryable = queryable.OrderBy(param.StrOrderColumns);
                }
                if (param.OrderColumns != null)
                {
                    queryable = queryable.OrderBy(param.OrderColumns, (OrderByType)param.OrderType);
                }
                var key = queryable.ToSql();
                List<T> list = queryable.ToPageList(param.PageIndex, param.PageSize, ref totalCount).ToList();
                return list;
            }
        }
    }
}
