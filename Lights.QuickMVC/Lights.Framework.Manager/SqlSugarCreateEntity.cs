using Lights.Framework.SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lights.Framework.Manager
{
    public class SqlSugarCreateEntity
    {
        SqlsugarRepository repository = new SqlsugarRepository();

        public void CreateEntity()
        {
            using (var db = repository.GetInstance())
            {
                db.DbFirst.CreateClassFile("E:\\GitProject\\QuickMVC\\EntityFile");
            }
        }
    }
}
