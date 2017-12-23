using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///操作表
    ///</summary>
    public partial class Tb_Admin_Action
    {
           public Tb_Admin_Action(){


           }
           /// <summary>
           /// Desc:操作编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int ActionID {get;set;}

           /// <summary>
           /// Desc:操作名称
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ActionName {get;set;}

           /// <summary>
           /// Desc:操作代码
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string ActionCode {get;set;}

           /// <summary>
           /// Desc:操作图标
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string ActionIcon {get;set;}

           /// <summary>
           /// Desc:操作描述
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string ActionDescripts {get;set;}

           /// <summary>
           /// Desc:是否是页面操作
           /// Default:
           /// Nullable:True
           /// </summary>           
           public int? IsPage {get;set;}

    }
}
