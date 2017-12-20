using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///
    ///</summary>
    public partial class Tb_Admin_Controller
    {
           public Tb_Admin_Controller(){


           }
           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int ControllerID {get;set;}

           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ControllerName {get;set;}

           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ControllerCode {get;set;}

           /// <summary>
           /// Desc:
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ControllerIcon {get;set;}

    }
}
