USE [master]
GO
/****** Object:  Database [Funix_SendMail]    Script Date: 1/19/2019 7:37:03 PM ******/
CREATE DATABASE [Funix_SendMail]
GO
USE [Funix_SendMail]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/19/2019 7:37:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [username], [password]) VALUES (1, N'admin', N'admin123')
INSERT [dbo].[User] ([id], [username], [password]) VALUES (2, N'funix', N'funix123')
INSERT [dbo].[User] ([id], [username], [password]) VALUES (3, N'tester', N'tester123')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [Funix_SendMail] SET  READ_WRITE 
GO
