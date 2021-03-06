USE [kingsunspeak]
GO
/****** Object:  Table [dbo].[Tb_UserInfo]    Script Date: 01/01/2018 22:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[ResourceID] [int] NULL,
	[Resource] [varchar](50) NULL,
	[TelePhone] [varchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[UserIdMod] [varchar](50) NULL,
	[UserType] [int] NULL,
	[Password] [varchar](20) NULL,
	[RealName] [varchar](20) NULL,
	[Sex] [varchar](10) NULL,
	[AddTime] [datetime] NULL,
	[Identity] [varchar](20) NULL,
	[Grade] [varchar](20) NULL,
	[Status] [int] NULL,
	[YUid] [int] NULL,
 CONSTRAINT [PK_TB_USERINFO] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'Resource'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方直数据池编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'UserIdMod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型（1：教师 ；2：学生）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'UserType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'教师：入职日期 学生：入学时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'AddTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份（当身份为教师）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'Identity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年级（当身份为学生）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'Grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态 1：正常 2：拒绝登录' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'第三方创建的id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tb_UserInfo', @level2type=N'COLUMN',@level2name=N'YUid'
GO
SET IDENTITY_INSERT [dbo].[Tb_UserInfo] ON
INSERT [dbo].[Tb_UserInfo] ([UserId], [UserName], [ResourceID], [Resource], [TelePhone], [CreateTime], [UserIdMod], [UserType], [Password], [RealName], [Sex], [AddTime], [Identity], [Grade], [Status], [YUid]) VALUES (1, N'15866238260', 1, NULL, N'15866238260', CAST(0x0000A7DA0113DFBC AS DateTime), N'1586623826', 1, N'123456', N'测试', N'男', CAST(0x0000A7DA00000000 AS DateTime), NULL, NULL, 1, 1313)
INSERT [dbo].[Tb_UserInfo] ([UserId], [UserName], [ResourceID], [Resource], [TelePhone], [CreateTime], [UserIdMod], [UserType], [Password], [RealName], [Sex], [AddTime], [Identity], [Grade], [Status], [YUid]) VALUES (2, N'18201233210', 1, NULL, N'18201233210', CAST(0x0000A7DB0095ABAA AS DateTime), N'45886195', 1, N'123456', N'测试', N'男', CAST(0x0000A7DA00000000 AS DateTime), NULL, NULL, 1, 1317)
INSERT [dbo].[Tb_UserInfo] ([UserId], [UserName], [ResourceID], [Resource], [TelePhone], [CreateTime], [UserIdMod], [UserType], [Password], [RealName], [Sex], [AddTime], [Identity], [Grade], [Status], [YUid]) VALUES (3, N'18905218014', 1, NULL, N'18905218014', CAST(0x0000A7DE00EB89E8 AS DateTime), N'1746124823', 2, N'123456', N'测试', N'男', CAST(0x0000A7DE00000000 AS DateTime), NULL, N'初一', 1, 1332)
SET IDENTITY_INSERT [dbo].[Tb_UserInfo] OFF
/****** Object:  Table [dbo].[Tb_UserFreeCourse]    Script Date: 01/01/2018 22:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_UserFreeCourse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StuPhone] [varchar](15) NOT NULL,
	[UserID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Tb_UserFreeCourse] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tb_UserFreeCourse] ON
INSERT [dbo].[Tb_UserFreeCourse] ([ID], [StuPhone], [UserID], [CreateDate]) VALUES (1, N'18201233210', 2, CAST(0x0000A85B015CB777 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tb_UserFreeCourse] OFF
/****** Object:  Table [dbo].[Tb_AppToken]    Script Date: 01/01/2018 22:06:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_AppToken](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AppToken] [varchar](50) NOT NULL,
	[AppName] [varchar](50) NOT NULL,
	[AppDescripts] [varchar](500) NULL,
	[CreateDate] [datetime] NULL,
	[State] [int] NULL,
	[ExpirDate] [datetime] NULL,
 CONSTRAINT [PK_Tb_AppToken] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tb_AppToken] ON
INSERT [dbo].[Tb_AppToken] ([ID], [AppToken], [AppName], [AppDescripts], [CreateDate], [State], [ExpirDate]) VALUES (1, N'123456789', N'测试应用', N'测试应用', CAST(0x0000A85701611778 AS DateTime), 1, NULL)
INSERT [dbo].[Tb_AppToken] ([ID], [AppToken], [AppName], [AppDescripts], [CreateDate], [State], [ExpirDate]) VALUES (2, N'12312323123', N'测试', N'菜市场', CAST(0x0000A85701611778 AS DateTime), 1, NULL)
INSERT [dbo].[Tb_AppToken] ([ID], [AppToken], [AppName], [AppDescripts], [CreateDate], [State], [ExpirDate]) VALUES (3, N'123456789', N'测试应用123', N'测试应用', CAST(0x0000A8570185EA8D AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[Tb_AppToken] OFF
/****** Object:  Table [dbo].[Tb_Admin_UserInfo]    Script Date: 01/01/2018 22:06:47 ******/
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
	[LastOnlineDate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tb_Admin_UserInfo] ([UserID], [UserName], [TrueName], [PassWord], [AvatarImg], [CreateDate], [LastOnlineDate]) VALUES (0, N'Admin', N'管理员', N'49ba59abbe56e057', NULL, CAST(0x0000A852014B193A AS DateTime), CAST(0x0000A858015FAE3F AS DateTime))
INSERT [dbo].[Tb_Admin_UserInfo] ([UserID], [UserName], [TrueName], [PassWord], [AvatarImg], [CreateDate], [LastOnlineDate]) VALUES (123456, N'Admin2', N'管理员2', N'49ba59abbe56e057', NULL, CAST(0x0000A85301725446 AS DateTime), CAST(0x0000A85301725446 AS DateTime))
/****** Object:  Default [DF_Tb_AppToken_CreateDate]    Script Date: 01/01/2018 22:06:47 ******/
ALTER TABLE [dbo].[Tb_AppToken] ADD  CONSTRAINT [DF_Tb_AppToken_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Tb_AppToken_State]    Script Date: 01/01/2018 22:06:47 ******/
ALTER TABLE [dbo].[Tb_AppToken] ADD  CONSTRAINT [DF_Tb_AppToken_State]  DEFAULT ((1)) FOR [State]
GO
/****** Object:  Default [DF_Tb_UserFreeCourse_CreateDate]    Script Date: 01/01/2018 22:06:47 ******/
ALTER TABLE [dbo].[Tb_UserFreeCourse] ADD  CONSTRAINT [DF_Tb_UserFreeCourse_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
