USE [QuickMVC]
GO
/****** Object:  Table [dbo].[Tb_Admin_UserRole]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_UserRole](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserRole', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserRole', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserRole'
GO
INSERT [dbo].[Tb_Admin_UserRole] ([UserID], [RoleID]) VALUES (0, 1)
/****** Object:  Table [dbo].[Tb_Admin_UserInfo]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_UserInfo](
	[UserID] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[TrueName] [nvarchar](50) NULL,
	[PassWord] [varchar](100) NOT NULL,
	[AvatarImg] [varchar](150) NULL,
	[CreateDate] [datetime] NULL,
	[LastOnlineDate] [datetime] NULL,
 CONSTRAINT [PK_TB_ADMIN_USERINFO] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'TrueName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'PassWord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'AvatarImg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后在线时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo', @level2type=N'COLUMN',@level2name=N'LastOnlineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_UserInfo'
GO
INSERT [dbo].[Tb_Admin_UserInfo] ([UserID], [UserName], [TrueName], [PassWord], [AvatarImg], [CreateDate], [LastOnlineDate]) VALUES (0, N'Admin', N'管理员', N'49ba59abbe56e057', NULL, CAST(0x0000A852014B193A AS DateTime), CAST(0x0000A852014B193A AS DateTime))
INSERT [dbo].[Tb_Admin_UserInfo] ([UserID], [UserName], [TrueName], [PassWord], [AvatarImg], [CreateDate], [LastOnlineDate]) VALUES (123456, N'Admin2', N'管理员2', N'49ba59abbe56e057', NULL, CAST(0x0000A85301725446 AS DateTime), CAST(0x0000A85301725446 AS DateTime))
/****** Object:  Table [dbo].[Tb_Admin_RoleMenu]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_RoleMenu](
	[RoleID] [int] NOT NULL,
	[MenuID] [int] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleMenu', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleMenu', @level2type=N'COLUMN',@level2name=N'MenuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色菜单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleMenu'
GO
INSERT [dbo].[Tb_Admin_RoleMenu] ([RoleID], [MenuID]) VALUES (1, 1)
INSERT [dbo].[Tb_Admin_RoleMenu] ([RoleID], [MenuID]) VALUES (1, 2)
INSERT [dbo].[Tb_Admin_RoleMenu] ([RoleID], [MenuID]) VALUES (1, 3)
INSERT [dbo].[Tb_Admin_RoleMenu] ([RoleID], [MenuID]) VALUES (1, 4)
INSERT [dbo].[Tb_Admin_RoleMenu] ([RoleID], [MenuID]) VALUES (1, 5)
INSERT [dbo].[Tb_Admin_RoleMenu] ([RoleID], [MenuID]) VALUES (1, 6)
/****** Object:  Table [dbo].[Tb_Admin_RoleController]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_RoleController](
	[RoleID] [int] NOT NULL,
	[ControllerID] [int] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleController', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleController', @level2type=N'COLUMN',@level2name=N'ControllerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色控制器表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleController'
GO
/****** Object:  Table [dbo].[Tb_Admin_RoleAction]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_RoleAction](
	[RoleID] [int] NOT NULL,
	[ActionID] [int] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleAction', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleAction', @level2type=N'COLUMN',@level2name=N'ActionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色操作表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_RoleAction'
GO
/****** Object:  Table [dbo].[Tb_Admin_Role]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[RoleDescripts] [varchar](500) NULL,
 CONSTRAINT [PK_TB_ADMIN_ROLE] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Role', @level2type=N'COLUMN',@level2name=N'RoleID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Role', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Role', @level2type=N'COLUMN',@level2name=N'RoleDescripts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Role'
GO
SET IDENTITY_INSERT [dbo].[Tb_Admin_Role] ON
INSERT [dbo].[Tb_Admin_Role] ([RoleID], [RoleName], [RoleDescripts]) VALUES (1, N'系统管理员', N'系统管理员')
SET IDENTITY_INSERT [dbo].[Tb_Admin_Role] OFF
/****** Object:  Table [dbo].[Tb_Admin_Menu]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_Menu](
	[MenuID] [int] IDENTITY(1,1) NOT NULL,
	[ControllerID] [int] NULL,
	[ActionID] [int] NULL,
	[MenuName] [varchar](150) NOT NULL,
	[MenuUrl] [varchar](150) NULL,
	[MenuIcon] [varchar](150) NULL,
	[ParentID] [int] NOT NULL,
	[Sort] [int] NULL,
 CONSTRAINT [PK_TB_ADMIN_MENU] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'MenuID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'ControllerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'ActionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'MenuName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'MenuUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'MenuIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户菜单表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Menu'
GO
SET IDENTITY_INSERT [dbo].[Tb_Admin_Menu] ON
INSERT [dbo].[Tb_Admin_Menu] ([MenuID], [ControllerID], [ActionID], [MenuName], [MenuUrl], [MenuIcon], [ParentID], [Sort]) VALUES (1, NULL, NULL, N'首页', N'/Admin/Home/Welcome', N'fa fa-spinner', 0, 1)
INSERT [dbo].[Tb_Admin_Menu] ([MenuID], [ControllerID], [ActionID], [MenuName], [MenuUrl], [MenuIcon], [ParentID], [Sort]) VALUES (2, NULL, NULL, N'用户管理', N'/Admin/User/index', N'fa fa-spinner', 0, 2)
INSERT [dbo].[Tb_Admin_Menu] ([MenuID], [ControllerID], [ActionID], [MenuName], [MenuUrl], [MenuIcon], [ParentID], [Sort]) VALUES (3, NULL, NULL, N'权限管理', NULL, N'fa fa-spinner', 0, 3)
INSERT [dbo].[Tb_Admin_Menu] ([MenuID], [ControllerID], [ActionID], [MenuName], [MenuUrl], [MenuIcon], [ParentID], [Sort]) VALUES (4, NULL, NULL, N'菜单管理', N'/Admin/Menu/Index', N'fa fa-spinner', 3, 1)
INSERT [dbo].[Tb_Admin_Menu] ([MenuID], [ControllerID], [ActionID], [MenuName], [MenuUrl], [MenuIcon], [ParentID], [Sort]) VALUES (5, NULL, NULL, N'角色管理', N'/Admin/Role/Index', N'fa fa-spinner', 3, 2)
INSERT [dbo].[Tb_Admin_Menu] ([MenuID], [ControllerID], [ActionID], [MenuName], [MenuUrl], [MenuIcon], [ParentID], [Sort]) VALUES (6, NULL, NULL, N'控制器管理', N'/Admin/MyController/Index', N'fa fa-spinner', 3, 3)
SET IDENTITY_INSERT [dbo].[Tb_Admin_Menu] OFF
/****** Object:  Table [dbo].[Tb_Admin_Controller]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_Controller](
	[ControllerID] [int] IDENTITY(1,1) NOT NULL,
	[ControllerName] [varchar](50) NOT NULL,
	[ControllerCode] [varchar](50) NOT NULL,
	[ControllerIcon] [varchar](150) NULL,
	[ControllerDescripts] [varchar](500) NULL,
 CONSTRAINT [PK_TB_ADMIN_CONTROLLER] PRIMARY KEY CLUSTERED 
(
	[ControllerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Controller', @level2type=N'COLUMN',@level2name=N'ControllerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Controller', @level2type=N'COLUMN',@level2name=N'ControllerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Controller', @level2type=N'COLUMN',@level2name=N'ControllerCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Controller', @level2type=N'COLUMN',@level2name=N'ControllerIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Controller', @level2type=N'COLUMN',@level2name=N'ControllerDescripts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Controller'
GO
/****** Object:  Table [dbo].[Tb_Admin_Action]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_Action](
	[ActionID] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [varchar](50) NOT NULL,
	[ActionCode] [varchar](50) NOT NULL,
	[ActionIcon] [varchar](150) NULL,
	[ActionDescripts] [varchar](500) NULL,
	[IsPage] [int] NULL,
 CONSTRAINT [PK_TB_ADMIN_ACTION] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action', @level2type=N'COLUMN',@level2name=N'ActionID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action', @level2type=N'COLUMN',@level2name=N'ActionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作代码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action', @level2type=N'COLUMN',@level2name=N'ActionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action', @level2type=N'COLUMN',@level2name=N'ActionIcon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action', @level2type=N'COLUMN',@level2name=N'ActionDescripts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否是页面操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action', @level2type=N'COLUMN',@level2name=N'IsPage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_Admin_Action'
GO
/****** Object:  View [dbo].[V_Admin_RoleMenu]    Script Date: 12/24/2017 23:41:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_Admin_RoleMenu]
as
select r.RoleID,r.RoleName,r.RoleDescripts,m.* from Tb_Admin_Role as r
left join Tb_Admin_RoleMenu as am on R.RoleID=am.RoleID
left join Tb_Admin_Menu as m on am.MenuID=m.MenuID
GO
/****** Object:  Default [DF__Tb_Admin___Creat__6C190EBB]    Script Date: 12/24/2017 23:41:47 ******/
ALTER TABLE [dbo].[Tb_Admin_UserInfo] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF__Tb_Admin___LastO__6D0D32F4]    Script Date: 12/24/2017 23:41:47 ******/
ALTER TABLE [dbo].[Tb_Admin_UserInfo] ADD  DEFAULT (getdate()) FOR [LastOnlineDate]
GO
