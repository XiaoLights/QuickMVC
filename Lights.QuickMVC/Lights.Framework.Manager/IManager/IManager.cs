using Lights.Core.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
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

        T Get<T>(Expression<Func<T, bool>> expr) where T : class, new();

        List<T> GetList<T>(Expression<Func<T, bool>> expr) where T : class, new();

        List<T> GetAll<T>() where T : class, new();

        /// <summary>
        /// 分页获取数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="orderby"></param>
        /// <param name="orderType">排序类型 0代表asc,1代表desc</param>
        /// <param name="where"></param>
        /// <param name="totalCount"></param>
        /// <returns></returns>
        List<T> GetPageList<T>(int pageIndex, int pageSize,
            Expression<Func<T, object>> orderby, int orderType,
            Expression<Func<T, bool>> where, ref int totalCount) where T : class, new();

        /// <summary>
        /// 分页获取数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="orderBy"></param>
        /// <param name="where"></param>
        /// <param name="totalCount"></param>
        /// <returns></returns>
        List<T> GetPageList<T>(int pageIndex, int pageSize, string orderBy,
           Expression<Func<T, bool>> where, ref int totalCount) where T : class, new();

        /// <summary>
        /// 分页获取数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <param name="orderBy"></param>
        /// <param name="WhereStr"></param>
        /// <param name="where"></param>
        /// <param name="totalCount"></param>
        /// <returns></returns>
        List<T> GetPageList<T>(int pageIndex, int pageSize, string orderBy, string WhereStr,
          Expression<Func<T, bool>> where, ref int totalCount) where T : class, new();

        /// <summary>
        /// 分页获取数据
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="param"></param>
        /// <param name="totalCount"></param>
        /// <returns></returns>
        List<T> GetPageList<T>(PageParams<T> param, ref int totalCount) where T : class, new();
    }
}
