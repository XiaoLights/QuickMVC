using System;
using System.Linq;
using System.Text;

namespace Lights.Admin.Model
{
    ///<summary>
    ///用户菜单表
    ///</summary>
    public partial class Tb_Admin_Menu
    {
           public Tb_Admin_Menu(){
           }
           /// <summary>
           /// Desc:菜单编号
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int MenuID {get;set;}

           /// <summary>
           /// Desc:控制器编号
           /// Default:
           /// Nullable:True
           /// </summary>           
           public int? ControllerID {get;set;}

           /// <summary>
           /// Desc:操作编号
           /// Default:
           /// Nullable:True
           /// </summary>           
           public int? ActionID {get;set;}

           /// <summary>
           /// Desc:菜单名称
           /// Default:
           /// Nullable:False
           /// </summary>           
           public string MenuName {get;set;}

           /// <summary>
           /// Desc:菜单地址
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string MenuUrl {get;set;}

           /// <summary>
           /// Desc:菜单图标
           /// Default:
           /// Nullable:True
           /// </summary>           
           public string MenuIcon {get;set;}

           /// <summary>
           /// Desc:父节点
           /// Default:
           /// Nullable:False
           /// </summary>           
           public int ParentID {get;set;}

           /// <summary>
           /// Desc:排序
           /// Default:
           /// Nullable:True
           /// </summary>           
           public int? Sort {get;set;}

    }
}
