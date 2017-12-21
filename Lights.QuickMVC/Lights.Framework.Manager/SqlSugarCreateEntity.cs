using Lights.Framework.SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Linq.Expressions;

namespace Lights.Framework.Manager
{
    public class SqlSugarCreateEntity
    {
        public void CreateEntity()
        {
            SqlsugarRepository repository = new SqlsugarRepository();
            using (var db = repository.GetInstance())
            {
                db.DbFirst.CreateClassFile("C://");
            }
        }
    }
}