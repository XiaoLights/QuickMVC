USE [QuickMVC]
GO
/****** Object:  Table [dbo].[Tb_Admin_Role]    Script Date: 12/21/2017 17:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_Role](
[RoleID] [int] IDENTITY(1,1) NOT NULL,
[RoleName] [nvarchar](100) NOT NULL,
[RoleDescripts] [nvarchar](200) NULL,
CONSTRAINT [PK_Tb_Role] PRIMARY KEY CLUSTERED
(
[RoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_Admin_Controller]    Script Date: 12/21/2017 17:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_Controller](
[ControllerID] [int] IDENTITY(1,1) NOT NULL,
[ControllerName] [nvarchar](200) NOT NULL,
[ControllerCode] [varchar](100) NOT NULL,
[ControllerIcon] [varchar](200) NOT NULL,
CONSTRAINT [PK_Tb_Controller] PRIMARY KEY CLUSTERED
(
[ControllerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Admin_Action]    Script Date: 12/21/2017 17:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_Action](
[ActionID] [int] IDENTITY(1,1) NOT NULL,
[ControllerID] [int] NOT NULL,
[ActionName] [nvarchar](100) NOT NULL,
[ActionCode] [varchar](100) NOT NULL,
[ActionIcon] [varchar](100) NOT NULL,
[IsPage] [int] NOT NULL,
CONSTRAINT [PK_Tb_Action] PRIMARY KEY CLUSTERED
(
[ActionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tb_Admin_UserInfo]    Script Date: 12/21/2017 17:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tb_Admin_UserInfo](
[UserID] [int] NOT NULL,
[UserName] [varchar](50) NOT NULL,
[TelePhone] [varchar](12) NOT NULL,
[PassWord] [varchar](100) NOT NULL,
[CreateDate] [datetime] NOT NULL,
[LastOnlineDate] [datetime] NOT NULL,
CONSTRAINT [PK_Tb_Admin_UserInfo] PRIMARY KEY CLUSTERED
(
[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Tb_Admin_UserInfo] ([UserID], [UserName], [TelePhone], [PassWord], [CreateDate], [LastOnlineDate]) VALUES (1, N'Admin', N'18207194650', N'49ba59abbe56e057', CAST(0x0000A85000BDCF74 AS DateTime), CAST(0x0000A85000BDCF74 AS DateTime))
/****** Object:  Table [dbo].[Tb_Admin_UserRole]    Script Date: 12/21/2017 17:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_UserRole](
[UserID] [int] NOT NULL,
[RoleID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tb_Admin_RoleControllerAction]    Script Date: 12/21/2017 17:31:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tb_Admin_RoleControllerAction](
[RoleID] [int] NOT NULL,
[ControllerID] [int] NOT NULL,
[ActionID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF_Tb_Action_IsPage]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_Action] ADD  CONSTRAINT [DF_Tb_Action_IsPage]  DEFAULT ((1)) FOR [IsPage]
GO
/****** Object:  Default [DF_Tb_Admin_UserInfo_CreateDate]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_UserInfo] ADD  CONSTRAINT [DF_Tb_Admin_UserInfo_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Tb_Admin_UserInfo_LastOnlineDate]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_UserInfo] ADD  CONSTRAINT [DF_Tb_Admin_UserInfo_LastOnlineDate]  DEFAULT (getdate()) FOR [LastOnlineDate]
GO
/****** Object:  ForeignKey [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Action]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_RoleControllerAction]  WITH CHECK ADD  CONSTRAINT [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Action] FOREIGN KEY([ActionID])
REFERENCES [dbo].[Tb_Admin_Action] ([ActionID])
GO
ALTER TABLE [dbo].[Tb_Admin_RoleControllerAction] CHECK CONSTRAINT [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Action]
GO
/****** Object:  ForeignKey [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Controller]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_RoleControllerAction]  WITH CHECK ADD  CONSTRAINT [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Controller] FOREIGN KEY([ControllerID])
REFERENCES [dbo].[Tb_Admin_Controller] ([ControllerID])
GO
ALTER TABLE [dbo].[Tb_Admin_RoleControllerAction] CHECK CONSTRAINT [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Controller]
GO
/****** Object:  ForeignKey [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Role]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_RoleControllerAction]  WITH CHECK ADD  CONSTRAINT [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Tb_Admin_Role] ([RoleID])
GO
ALTER TABLE [dbo].[Tb_Admin_RoleControllerAction] CHECK CONSTRAINT [FK_Tb_Admin_RoleControllerAction_Tb_Admin_Role]
GO
/****** Object:  ForeignKey [FK_Tb_Admin_UserRole_Tb_Admin_Role]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Tb_Admin_UserRole_Tb_Admin_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Tb_Admin_Role] ([RoleID])
GO
ALTER TABLE [dbo].[Tb_Admin_UserRole] CHECK CONSTRAINT [FK_Tb_Admin_UserRole_Tb_Admin_Role]
GO
/****** Object:  ForeignKey [FK_Tb_Admin_UserRole_Tb_Admin_UserInfo]    Script Date: 12/21/2017 17:31:15 ******/
ALTER TABLE [dbo].[Tb_Admin_UserRole]  WITH CHECK ADD  CONSTRAINT [FK_Tb_Admin_UserRole_Tb_Admin_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[Tb_Admin_UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[Tb_Admin_UserRole] CHECK CONSTRAINT [FK_Tb_Admin_UserRole_Tb_Admin_UserInfo]
GO
