USE [master]
GO
/****** Object:  Database [diploma_db]    Script Date: 02/18/2018 12:16:41 ******/
CREATE DATABASE [diploma_db] ON  PRIMARY 
( NAME = N'diploma_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\diploma_db.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'diploma_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\diploma_db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [diploma_db] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [diploma_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [diploma_db] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [diploma_db] SET ANSI_NULLS OFF
GO
ALTER DATABASE [diploma_db] SET ANSI_PADDING OFF
GO
ALTER DATABASE [diploma_db] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [diploma_db] SET ARITHABORT OFF
GO
ALTER DATABASE [diploma_db] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [diploma_db] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [diploma_db] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [diploma_db] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [diploma_db] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [diploma_db] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [diploma_db] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [diploma_db] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [diploma_db] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [diploma_db] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [diploma_db] SET  DISABLE_BROKER
GO
ALTER DATABASE [diploma_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [diploma_db] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [diploma_db] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [diploma_db] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [diploma_db] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [diploma_db] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [diploma_db] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [diploma_db] SET  READ_WRITE
GO
ALTER DATABASE [diploma_db] SET RECOVERY SIMPLE
GO
ALTER DATABASE [diploma_db] SET  MULTI_USER
GO
ALTER DATABASE [diploma_db] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [diploma_db] SET DB_CHAINING OFF
GO
USE [diploma_db]
GO
/****** Object:  Table [dbo].[users]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[surname] [varchar](255) NOT NULL,
	[middlename] [varchar](255) NULL,
	[password] [varchar](255) NOT NULL,
	[remember_token] [varchar](100) NULL,
	[created_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON
INSERT [dbo].[users] ([id], [email], [name], [surname], [middlename], [password], [remember_token], [created_at]) VALUES (1, N'h8mdm@gmail.com', N'Алексей', N'Иванов', NULL, N'$2y$10$JNzGQDzGf1g5mIb4MXFTleNXuk2HQTUyFuEVitkKkDi4PtcdnSpju', N'qqGMCdodEczsDjGzNtFgO1uj2oHfQ6jk1vlQsd4r5j7lrvQeAVtUGWzbZoTK', CAST(0x0000A76500000000 AS DateTime))
INSERT [dbo].[users] ([id], [email], [name], [surname], [middlename], [password], [remember_token], [created_at]) VALUES (2, N'PTuAH@gmail.com', N'Пётр', N'Петров', NULL, N'$2y$10$HfDKXSQfGK.OlwwpnX02Q.zwFBB7DZO490wxiYSXaKwyXGMC.WXOa', N'7VeK5abUoz3ASGZ7DGZzLUIyTdy6BxcLjJoRNCxkqYcSJoMtFpZ2aNi12lnl', CAST(0x0000A76500000000 AS DateTime))
INSERT [dbo].[users] ([id], [email], [name], [surname], [middlename], [password], [remember_token], [created_at]) VALUES (3, N'mjTET@gmail.com', N'lZ6aGXEWkZ', N'AS1BiMA7FK', NULL, N'$2y$10$MqS7jdiRMQD.9ejJdkXDy.C64rqKAlF7LMQVdin0nagBFUmb0Cf3O', N'jSE2NcneksB9oxxkwbSYC0uUyzGCwKMyXbLWmX0mcsmD0eANylEBbrdUyyy2', CAST(0x0000A76600000000 AS DateTime))
INSERT [dbo].[users] ([id], [email], [name], [surname], [middlename], [password], [remember_token], [created_at]) VALUES (4, N'XsgO8@gmail.com', N'GwTgl9ITSJ', N'MaLAjTRWnJ', NULL, N'$2y$10$XY1KdNu6JyXFseV6sDT3J.itKLDPlXeqdsmWHwpYp6qlbQ/7UFkc2', NULL, CAST(0x0000A77400000000 AS DateTime))
INSERT [dbo].[users] ([id], [email], [name], [surname], [middlename], [password], [remember_token], [created_at]) VALUES (5, N'kdOea@gmail.com', N'9IJ2TOlXet', N'PNPGhQqWZY', NULL, N'$2y$10$S9jikMf.Lm2.hHCGEJl5g.JOv69Y1AmWX9bMHMUrkAaes9DU2pxoS', NULL, CAST(0x0000A77400000000 AS DateTime))
INSERT [dbo].[users] ([id], [email], [name], [surname], [middlename], [password], [remember_token], [created_at]) VALUES (6, N'gTTRO@gmail.com', N'8XiVIEYSUq', N'4wAapVvUZu', NULL, N'$2y$10$TwL8KuE2S7j9mEoMts4WVuJlarilK9DyPgJsZKzZ1F0PmR3GkA0lG', N'uE87njI8BpNv3lWOTIMl932qaI1bHmBgrzHujNcOnBABO6V0OEsHfwsEXZnm', CAST(0x0000A77400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[users] OFF
/****** Object:  Table [dbo].[groups]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[groups] ON
INSERT [dbo].[groups] ([id], [name]) VALUES (2, N'ПМ-43')
INSERT [dbo].[groups] ([id], [name]) VALUES (4, N'ПО-21')
INSERT [dbo].[groups] ([id], [name]) VALUES (1, N'ПО-43')
INSERT [dbo].[groups] ([id], [name]) VALUES (3, N'ЭК-42')
SET IDENTITY_INSERT [dbo].[groups] OFF
/****** Object:  Table [dbo].[disciplines]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[disciplines](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[disciplines] ON
INSERT [dbo].[disciplines] ([id], [name]) VALUES (5, N'Android')
INSERT [dbo].[disciplines] ([id], [name]) VALUES (3, N'Web-технологии')
INSERT [dbo].[disciplines] ([id], [name]) VALUES (2, N'Алгоритмизация')
INSERT [dbo].[disciplines] ([id], [name]) VALUES (1, N'Архитектура БД')
INSERT [dbo].[disciplines] ([id], [name]) VALUES (4, N'Стандартизация')
SET IDENTITY_INSERT [dbo].[disciplines] OFF
/****** Object:  Table [dbo].[marks_logs]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marks_logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[task_id] [int] NULL,
	[old_value] [int] NULL,
	[new_value] [int] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[students]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[students](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[students] ON
INSERT [dbo].[students] ([id], [user_id], [group_id]) VALUES (1, 2, 1)
INSERT [dbo].[students] ([id], [user_id], [group_id]) VALUES (2, 5, 2)
INSERT [dbo].[students] ([id], [user_id], [group_id]) VALUES (3, 6, 3)
SET IDENTITY_INSERT [dbo].[students] OFF
/****** Object:  Table [dbo].[professors]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[professors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[occupation] [varchar](255) NULL,
	[degree] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[professors] ON
INSERT [dbo].[professors] ([id], [user_id], [occupation], [degree]) VALUES (1, 1, N'NIILKXCyZk', N'AmvXlIrfIP')
INSERT [dbo].[professors] ([id], [user_id], [occupation], [degree]) VALUES (2, 3, N'EItVVH7wG3', N'tR2n43V6hU')
SET IDENTITY_INSERT [dbo].[professors] OFF
/****** Object:  Table [dbo].[tasks]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[professor_id] [int] NOT NULL,
	[type] [int] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[technologies] [varchar](255) NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tasks] ON
INSERT [dbo].[tasks] ([id], [professor_id], [type], [title], [description], [technologies], [group_id], [created_at], [updated_at]) VALUES (61, 1, 2, N'Система контроля покупок', N'Система для контроля пользовательских покупок', N'Java, JavaScript, MySQL', 1, CAST(0x0000A77500000000 AS DateTime), CAST(0x0000A77600000000 AS DateTime))
INSERT [dbo].[tasks] ([id], [professor_id], [type], [title], [description], [technologies], [group_id], [created_at], [updated_at]) VALUES (63, 1, 2, N'Новостной портал', N'Новостной портал с возможностью добавления новостей, редактированием, оставлением комментариев.', N'Java, JavaScript', 1, CAST(0x0000A77500000000 AS DateTime), NULL)
INSERT [dbo].[tasks] ([id], [professor_id], [type], [title], [description], [technologies], [group_id], [created_at], [updated_at]) VALUES (88, 1, 1, N'Сайт-визитка', N'Сайт-визитка для мебельной фирмы', N'HTML, CSS, JavaScript, PHP', 1, CAST(0x0000A77A00000000 AS DateTime), NULL)
INSERT [dbo].[tasks] ([id], [professor_id], [type], [title], [description], [technologies], [group_id], [created_at], [updated_at]) VALUES (89, 1, 1, N'Приложение для хранения визиток', N'Приложение для хранения визиток работников предприятия.', N'Java, JavaScript', 1, CAST(0x0000A77A00000000 AS DateTime), NULL)
INSERT [dbo].[tasks] ([id], [professor_id], [type], [title], [description], [technologies], [group_id], [created_at], [updated_at]) VALUES (90, 1, 2, N'Интернет-магазин', N'Интернет магазин для продажи компьютеров и комплектующих', N'PHP, JavaScript', 1, CAST(0x0000A77C00000000 AS DateTime), NULL)
INSERT [dbo].[tasks] ([id], [professor_id], [type], [title], [description], [technologies], [group_id], [created_at], [updated_at]) VALUES (91, 1, 1, N'Оконное приложения для управления базы данных', N'Оконное приложения для управления базы данных на предприятии', N'Windows Forms, MS SQL 2008 R2', 1, CAST(0x0000A77C00000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tasks] OFF
/****** Object:  Table [dbo].[requests]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[requests](
	[task_id] [int] NOT NULL,
	[student_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[message] [varchar](255) NULL,
	[mark] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[started_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[task_id] ASC,
	[student_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[requests] ([task_id], [student_id], [status], [message], [mark], [created_at], [started_at]) VALUES (63, 1, 1, N'Здравствуйте, могу ли я записаться к Вам на диплом?', NULL, CAST(0x0000A77C00000000 AS DateTime), CAST(0x0000A77C00000000 AS DateTime))
INSERT [dbo].[requests] ([task_id], [student_id], [status], [message], [mark], [created_at], [started_at]) VALUES (88, 1, 1, N'', NULL, CAST(0x0000A77A00000000 AS DateTime), CAST(0x0000A77A00000000 AS DateTime))
INSERT [dbo].[requests] ([task_id], [student_id], [status], [message], [mark], [created_at], [started_at]) VALUES (89, 1, 2, N'Вторая попытка', NULL, CAST(0x0000A77A00000000 AS DateTime), NULL)
INSERT [dbo].[requests] ([task_id], [student_id], [status], [message], [mark], [created_at], [started_at]) VALUES (90, 1, 1, N'Здравствуйте,могу ли я записаться на данную тему?', NULL, CAST(0x0000A77C00000000 AS DateTime), CAST(0x0000A77C00000000 AS DateTime))
INSERT [dbo].[requests] ([task_id], [student_id], [status], [message], [mark], [created_at], [started_at]) VALUES (91, 1, 1, N'', NULL, CAST(0x0000A77C00000000 AS DateTime), CAST(0x0000A77C00000000 AS DateTime))
/****** Object:  Table [dbo].[tasks_disciplines]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks_disciplines](
	[task_id] [int] NOT NULL,
	[discipline_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[task_id] ASC,
	[discipline_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tasks_disciplines] ([task_id], [discipline_id]) VALUES (88, 3)
INSERT [dbo].[tasks_disciplines] ([task_id], [discipline_id]) VALUES (89, 1)
INSERT [dbo].[tasks_disciplines] ([task_id], [discipline_id]) VALUES (89, 2)
INSERT [dbo].[tasks_disciplines] ([task_id], [discipline_id]) VALUES (89, 3)
INSERT [dbo].[tasks_disciplines] ([task_id], [discipline_id]) VALUES (91, 1)
INSERT [dbo].[tasks_disciplines] ([task_id], [discipline_id]) VALUES (91, 2)
/****** Object:  Table [dbo].[jobs]    Script Date: 02/18/2018 12:16:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[jobs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[task_id] [int] NOT NULL,
	[description] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[deadline] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[jobs] ON
INSERT [dbo].[jobs] ([id], [task_id], [description], [created_at], [deadline]) VALUES (18, 88, N'Определиться с фреймворком', CAST(0x0000A77A00000000 AS DateTime), CAST(0x0000A78400000000 AS DateTime))
INSERT [dbo].[jobs] ([id], [task_id], [description], [created_at], [deadline]) VALUES (19, 63, N'Спроектировать структуру базы данных', CAST(0x0000A77C00000000 AS DateTime), CAST(0x0000A78400000000 AS DateTime))
INSERT [dbo].[jobs] ([id], [task_id], [description], [created_at], [deadline]) VALUES (20, 90, N'Разработать структуру базы данных', CAST(0x0000A77C00000000 AS DateTime), CAST(0x0000A78800000000 AS DateTime))
INSERT [dbo].[jobs] ([id], [task_id], [description], [created_at], [deadline]) VALUES (21, 91, N'Разработать классы для установления связи с базой данных', CAST(0x0000A77C00000000 AS DateTime), CAST(0x0000A79200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[jobs] OFF
/****** Object:  ForeignKey [FK__students__group___56B4A8D8]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[students]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[groups] ([id])
GO
/****** Object:  ForeignKey [FK__students__user_i__55C0849F]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[students]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
/****** Object:  ForeignKey [FK__professor__user___47726548]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[professors]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
/****** Object:  ForeignKey [FK__tasks__group_id__5C6D822E]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[tasks]  WITH CHECK ADD FOREIGN KEY([group_id])
REFERENCES [dbo].[groups] ([id])
GO
/****** Object:  ForeignKey [FK__tasks__professor__5B795DF5]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[tasks]  WITH CHECK ADD FOREIGN KEY([professor_id])
REFERENCES [dbo].[professors] ([id])
GO
/****** Object:  ForeignKey [FK__requests__studen__6E8C3269]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[requests]  WITH CHECK ADD FOREIGN KEY([student_id])
REFERENCES [dbo].[students] ([id])
GO
/****** Object:  ForeignKey [FK__requests__task_i__6D980E30]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[requests]  WITH CHECK ADD FOREIGN KEY([task_id])
REFERENCES [dbo].[tasks] ([id])
GO
/****** Object:  ForeignKey [FK__tasks_dis__disci__68D35913]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[tasks_disciplines]  WITH CHECK ADD FOREIGN KEY([discipline_id])
REFERENCES [dbo].[disciplines] ([id])
GO
/****** Object:  ForeignKey [FK__tasks_dis__task___67DF34DA]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[tasks_disciplines]  WITH CHECK ADD FOREIGN KEY([task_id])
REFERENCES [dbo].[tasks] ([id])
GO
/****** Object:  ForeignKey [FK__jobs__task_id__79FDE515]    Script Date: 02/18/2018 12:16:42 ******/
ALTER TABLE [dbo].[jobs]  WITH CHECK ADD FOREIGN KEY([task_id])
REFERENCES [dbo].[tasks] ([id])
GO
