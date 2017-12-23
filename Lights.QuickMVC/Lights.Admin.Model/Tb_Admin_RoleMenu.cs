using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///角色菜单表
    ///</summary>
    public partial class Tb_Admin_RoleMenu
    {
           public Tb_Admin_RoleMenu(){


           }
           /// <summary>
           /// Desc:角色编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int RoleID {get;set;}

           /// <summary>
           /// Desc:菜单编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int MenuID {get;set;}

    }
}
