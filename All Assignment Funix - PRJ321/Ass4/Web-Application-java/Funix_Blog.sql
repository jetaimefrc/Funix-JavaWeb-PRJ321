USE [master]
GO
/****** Object:  Database [Funix_Blog]    Script Date: 1/17/2019 11:34:11 PM ******/
CREATE DATABASE [Funix_Blog]
GO
USE [Funix_Blog]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 1/17/2019 11:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [nvarchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 1/17/2019 11:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[topic] [nvarchar](max) NOT NULL,
	[contents] [text] NOT NULL,
	[status] [int] NOT NULL,
	[author] [nvarchar](255) NOT NULL,
	[createdAt] [date] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([id], [username], [password]) VALUES (N'1', N' nhattq', N'nhattq123')
INSERT [dbo].[Account] ([id], [username], [password]) VALUES (N'2', N'admin', N'admin123')
INSERT [dbo].[Account] ([id], [username], [password]) VALUES (N'3', N'demonslight', N'demonslight123')
SET IDENTITY_INSERT [dbo].[Article] ON 

INSERT [dbo].[Article] ([id], [title], [topic], [contents], [status], [author], [createdAt]) VALUES (2, N'Type Vue without TypeScript
', N'Vue + Typescript', N'In the last decade, browsers have become very powerful, allowing developers to build rich interactive applications. The interactivity and richness have come with an increase in complexity and size of the codebase in the frontend. Large complex codebases demand more attention and frontend teams have become larger.', 1, N'Preethi Kasireddy', CAST(N'2016-04-04' AS Date))
INSERT [dbo].[Article] ([id], [title], [topic], [contents], [status], [author], [createdAt]) VALUES (6, N'How to build a NodeJS cinema microservice and deploy it with docker', N'Docker', N'Here are the tools we’re going to use:

NodeJS version 7.2.0
MongoDB 3.4.1
Docker for Mac 1.12.6
Before you attempt this guide, you should have:

Basic knowledge in NodeJS
Basic knowledge in Docker (and Docker installed)
Basic knowledge in MongoDB (and the database service running. If you don’t, I suggest you follow my previous article How deploy a MongoDB replica set with Docker.)', 1, N'Cristian Ramirez', CAST(N'2017-06-23' AS Date))
INSERT [dbo].[Article] ([id], [title], [topic], [contents], [status], [author], [createdAt]) VALUES (8, N'So what’s this GraphQL thing I keep hearing about?', N'GraphQL', N'The solution Facebook came up with is conceptually very simple: instead of having multiple “dumb” endpoints, have a single “smart” endpoint that can take in complex queries, and then massage the data output into whatever shape the client requires.', 1, N'Sacha Greif', CAST(N'2017-04-11' AS Date))
INSERT [dbo].[Article] ([id], [title], [topic], [contents], [status], [author], [createdAt]) VALUES (10, N'REST APIs are REST-in-Peace APIs. Long Live GraphQL.', N'GraphQL', N'Of course, back then, it was just an attempt by me at being funny, but today I believe that the funny prediction is actually happening.

Please don’t interpret this wrong. I am not going to accuse GraphQL of “killing” REST or anything like that. REST will probably never die, just like XML never did. I simply think GraphQL will do to REST what JSON did to XML.', 1, N'Samer Buna', CAST(N'2017-05-24' AS Date))
INSERT [dbo].[Article] ([id], [title], [topic], [contents], [status], [author], [createdAt]) VALUES (11, N'How to set-up a powerful API with Nodejs, GraphQL, MongoDB, Hapi, and Swagger', N'GraphQL-API', N'I’m all for hiring juniors and training your staff, and that’s exactly why you should separate concerns. With separation of concerns, you can reduce the complexity of your application by splitting responsibilities into “micro-services” where each team is specialized in their micro-service.', 1, N'Indrek Lasn', CAST(N'2018-05-22' AS Date))
INSERT [dbo].[Article] ([id], [title], [topic], [contents], [status], [author], [createdAt]) VALUES (13, N'Introducing Prisma 🎉', N'Prisma', N'Prisma is a GraphQL database proxy turning your database into a GraphQL API. You can use the API as foundation for your own GraphQL server or connect directly from your frontend application.', 1, N'Prisma', CAST(N'2018-06-16' AS Date))
SET IDENTITY_INSERT [dbo].[Article] OFF
USE [master]
GO
ALTER DATABASE [Funix_Blog] SET  READ_WRITE 
GO
