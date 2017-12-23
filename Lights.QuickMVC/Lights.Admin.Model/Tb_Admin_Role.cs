using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///角色表
    ///</summary>
    public partial class Tb_Admin_Role
    {
           public Tb_Admin_Role(){


           }
           /// <summary>
           /// Desc:角色编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int RoleID {get;set;}

           /// <summary>
           /// Desc:角色名称
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string RoleName {get;set;}

           /// <summary>
           /// Desc:角色描述
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string RoleDescripts {get;set;}

    }
}
