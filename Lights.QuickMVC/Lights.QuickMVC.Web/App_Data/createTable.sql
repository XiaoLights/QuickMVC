if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_Action')
            and   type = 'U')
   drop table Tb_Admin_Action
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_Controller')
            and   type = 'U')
   drop table Tb_Admin_Controller
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_Menu')
            and   type = 'U')
   drop table Tb_Admin_Menu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_Role')
            and   type = 'U')
   drop table Tb_Admin_Role
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_RoleAction')
            and   type = 'U')
   drop table Tb_Admin_RoleAction
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_RoleController')
            and   type = 'U')
   drop table Tb_Admin_RoleController
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_RoleMenu')
            and   type = 'U')
   drop table Tb_Admin_RoleMenu
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_UserInfo')
            and   type = 'U')
   drop table Tb_Admin_UserInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tb_Admin_UserRole')
            and   type = 'U')
   drop table Tb_Admin_UserRole
go

/*==============================================================*/
/* Table: Tb_Admin_Action                                       */
/*==============================================================*/
create table Tb_Admin_Action (
   ActionID             int                  identity,
   ActionName           varchar(50)          not null,
   ActionCode           varchar(50)          not null,
   ActionIcon           varchar(150)         null,
   ActionDescripts      varchar(500)         null,
   IsPage               int                  null,
   constraint PK_TB_ADMIN_ACTION primary key (ActionID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作表',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action', 'column', 'ActionID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作名称',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action', 'column', 'ActionName'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作代码',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action', 'column', 'ActionCode'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作图标',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action', 'column', 'ActionIcon'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作描述',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action', 'column', 'ActionDescripts'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '是否是页面操作',
   'user', @CurrentUser, 'table', 'Tb_Admin_Action', 'column', 'IsPage'
go

/*==============================================================*/
/* Table: Tb_Admin_Controller                                   */
/*==============================================================*/
create table Tb_Admin_Controller (
   ControllerID         int                  identity,
   ControllerName       varchar(50)          not null,
   ControllerCode       varchar(50)          not null,
   ControllerIcon       varchar(150)         null,
   ControllerDescripts  varchar(500)         null,
   constraint PK_TB_ADMIN_CONTROLLER primary key (ControllerID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器表',
   'user', @CurrentUser, 'table', 'Tb_Admin_Controller'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_Controller', 'column', 'ControllerID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器名称',
   'user', @CurrentUser, 'table', 'Tb_Admin_Controller', 'column', 'ControllerName'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器代码',
   'user', @CurrentUser, 'table', 'Tb_Admin_Controller', 'column', 'ControllerCode'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器图标',
   'user', @CurrentUser, 'table', 'Tb_Admin_Controller', 'column', 'ControllerIcon'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器描述',
   'user', @CurrentUser, 'table', 'Tb_Admin_Controller', 'column', 'ControllerDescripts'
go

/*==============================================================*/
/* Table: Tb_Admin_Menu                                         */
/*==============================================================*/
create table Tb_Admin_Menu (
   MenuID               int                  identity,
   ControllerID         int                  null,
   ActionID             int                  null,
   MenuName             varchar(150)         not null,
   MenuUrl              varchar(150)         null,
   MenuIcon             varchar(150)         null,
   ParentID             int                  not null,
   Sort                 int                  null,
   constraint PK_TB_ADMIN_MENU primary key (MenuID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户菜单表',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '菜单编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'MenuID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'ControllerID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'ActionID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '菜单名称',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'MenuName'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '菜单地址',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'MenuUrl'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '菜单图标',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'MenuIcon'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '父节点',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'ParentID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '排序',
   'user', @CurrentUser, 'table', 'Tb_Admin_Menu', 'column', 'Sort'
go

/*==============================================================*/
/* Table: Tb_Admin_Role                                         */
/*==============================================================*/
create table Tb_Admin_Role (
   RoleID               int                  identity,
   RoleName             nvarchar(50)         not null,
   RoleDescripts        varchar(500)         null,
   constraint PK_TB_ADMIN_ROLE primary key (RoleID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色表',
   'user', @CurrentUser, 'table', 'Tb_Admin_Role'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_Role', 'column', 'RoleID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色名称',
   'user', @CurrentUser, 'table', 'Tb_Admin_Role', 'column', 'RoleName'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色描述',
   'user', @CurrentUser, 'table', 'Tb_Admin_Role', 'column', 'RoleDescripts'
go

/*==============================================================*/
/* Table: Tb_Admin_RoleAction                                   */
/*==============================================================*/
create table Tb_Admin_RoleAction (
   RoleID               int                  not null,
   ActionID             int                  not null
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色操作表',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleAction'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleAction', 'column', 'RoleID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '操作编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleAction', 'column', 'ActionID'
go

/*==============================================================*/
/* Table: Tb_Admin_RoleController                               */
/*==============================================================*/
create table Tb_Admin_RoleController (
   RoleID               int                  not null,
   ControllerID         int                  not null
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色控制器表',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleController'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleController', 'column', 'RoleID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '控制器编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleController', 'column', 'ControllerID'
go

/*==============================================================*/
/* Table: Tb_Admin_RoleMenu                                     */
/*==============================================================*/
create table Tb_Admin_RoleMenu (
   RoleID               int                  not null,
   MenuID               int                  not null
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色菜单表',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleMenu'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleMenu', 'column', 'RoleID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '菜单编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_RoleMenu', 'column', 'MenuID'
go

/*==============================================================*/
/* Table: Tb_Admin_UserInfo                                     */
/*==============================================================*/
create table Tb_Admin_UserInfo (
   UserID               int                  not null,
   UserName             varchar(50)          not null,
   TrueName             nvarchar(50)         null,
   PassWord             varchar(100)         not null,
   AvatarImg            varchar(150)         null,
   CreateDate           datetime             null default getdate(),
   LastOnlineDate       datetime             null default getdate(),
   constraint PK_TB_ADMIN_USERINFO primary key (UserID)
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户表',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'UserID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户名称',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'UserName'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '真实姓名',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'TrueName'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '密码',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'PassWord'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '头像',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'AvatarImg'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '创建时间',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'CreateDate'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '最后在线时间',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserInfo', 'column', 'LastOnlineDate'
go

/*==============================================================*/
/* Table: Tb_Admin_UserRole                                     */
/*==============================================================*/
create table Tb_Admin_UserRole (
   UserID               int                  not null,
   RoleID               int                  not null
)
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户角色表',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserRole'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '用户编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserRole', 'column', 'UserID'
go

declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '角色编号',
   'user', @CurrentUser, 'table', 'Tb_Admin_UserRole', 'column', 'RoleID'
go
