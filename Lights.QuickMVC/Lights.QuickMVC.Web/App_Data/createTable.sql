USE [QuickMVC]
GO
/****** Object:  Table [dbo].[Tb_Admin_UserInfo]    Script Date: 12/20/2017 21:26:01 ******/
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
/****** Object:  Table [dbo].[Tb_Admin_Role]    Script Date: 12/20/2017 21:26:01 ******/
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
/****** Object:  Table [dbo].[Tb_Admin_Controller]    Script Date: 12/20/2017 21:26:01 ******/
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
/****** Object:  Table [dbo].[Tb_Admin_Action]    Script Date: 12/20/2017 21:26:01 ******/
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
/****** Object:  Default [DF_Tb_Action_IsPage]    Script Date: 12/20/2017 21:26:01 ******/
ALTER TABLE [dbo].[Tb_Admin_Action] ADD  CONSTRAINT [DF_Tb_Action_IsPage]  DEFAULT ((1)) FOR [IsPage]
GO
/****** Object:  Default [DF_Tb_Admin_UserInfo_CreateDate]    Script Date: 12/20/2017 21:26:01 ******/
ALTER TABLE [dbo].[Tb_Admin_UserInfo] ADD  CONSTRAINT [DF_Tb_Admin_UserInfo_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
/****** Object:  Default [DF_Tb_Admin_UserInfo_LastOnlineDate]    Script Date: 12/20/2017 21:26:01 ******/
ALTER TABLE [dbo].[Tb_Admin_UserInfo] ADD  CONSTRAINT [DF_Tb_Admin_UserInfo_LastOnlineDate]  DEFAULT (getdate()) FOR [LastOnlineDate]
GO
