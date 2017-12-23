using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///角色操作表
    ///</summary>
    public partial class Tb_Admin_RoleAction
    {
           public Tb_Admin_RoleAction(){


           }
           /// <summary>
           /// Desc:角色编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int RoleID {get;set;}

           /// <summary>
           /// Desc:操作编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int ActionID {get;set;}

    }
}
