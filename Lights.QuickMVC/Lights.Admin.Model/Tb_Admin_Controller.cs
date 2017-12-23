using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///控制器表
    ///</summary>
    public partial class Tb_Admin_Controller
    {
           public Tb_Admin_Controller(){


           }
           /// <summary>
           /// Desc:控制器编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int ControllerID {get;set;}

           /// <summary>
           /// Desc:控制器名称
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ControllerName {get;set;}

           /// <summary>
           /// Desc:控制器代码
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ControllerCode {get;set;}

           /// <summary>
           /// Desc:控制器图标
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string ControllerIcon {get;set;}

           /// <summary>
           /// Desc:控制器描述
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string ControllerDescripts {get;set;}

    }
}
