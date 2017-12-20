using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///
    ///</summary>
    public partial class Tb_Admin_Role
    {
           public Tb_Admin_Role(){


           }
           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int RoleID {get;set;}

           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string RoleName {get;set;}

           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string RoleDescripts {get;set;}

    }
}
