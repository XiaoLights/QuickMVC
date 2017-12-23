using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///角色控制器表
    ///</summary>
    public partial class Tb_Admin_RoleController
    {
           public Tb_Admin_RoleController(){


           }
           /// <summary>
           /// Desc:角色编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int RoleID {get;set;}

           /// <summary>
           /// Desc:控制器编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int ControllerID {get;set;}

    }
}
