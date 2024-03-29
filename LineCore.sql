USE [master]
GO
/****** Object:  Database [linecoreBase]    Script Date: 28.10.2019 22:01:46 ******/
CREATE DATABASE [linecoreBase]
 CONTAINMENT = NONE

 COLLATE Cyrillic_General_CS_AS
GO
ALTER DATABASE [linecoreBase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [linecoreBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [linecoreBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [linecoreBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [linecoreBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [linecoreBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [linecoreBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [linecoreBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [linecoreBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [linecoreBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [linecoreBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [linecoreBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [linecoreBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [linecoreBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [linecoreBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [linecoreBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [linecoreBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [linecoreBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [linecoreBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [linecoreBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [linecoreBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [linecoreBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [linecoreBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [linecoreBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [linecoreBase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [linecoreBase] SET  MULTI_USER 
GO
ALTER DATABASE [linecoreBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [linecoreBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [linecoreBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [linecoreBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [linecoreBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [linecoreBase] SET QUERY_STORE = OFF
GO
USE [linecoreBase]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28.10.2019 22:01:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] NOT NULL,
	[County] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GetTovara]    Script Date: 28.10.2019 22:01:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GetTovara](
	[NumberId] [int] NOT NULL,
	[Tovar] [int] NOT NULL,
	[Sklad] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Manager] [int] NOT NULL,
 CONSTRAINT [PK_GetTovara] PRIMARY KEY CLUSTERED 
(
	[NumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontragent]    Script Date: 28.10.2019 22:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontragent](
	[Id] [int] NOT NULL,
	[Kontragent] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
 CONSTRAINT [PK_Kontragent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostTovara]    Script Date: 28.10.2019 22:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostTovara](
	[NumberId] [int] NOT NULL,
	[Tovar] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Kontragent] [int] NOT NULL,
 CONSTRAINT [PK_PostTovara] PRIMARY KEY CLUSTERED 
(
	[NumberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 28.10.2019 22:01:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] NOT NULL,
	[RoleName] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sklad]    Script Date: 28.10.2019 22:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sklad](
	[Id] [int] NOT NULL,
	[SkladName] [varchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
 CONSTRAINT [PK_Sklad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TovarColor]    Script Date: 28.10.2019 22:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TovarColor](
	[Id] [int] NOT NULL,
	[Color] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
 CONSTRAINT [PK_TovarColor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tovares]    Script Date: 28.10.2019 22:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tovares](
	[TovarId] [int] NOT NULL,
	[TovarName] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
	[TovarArticle] [int] NOT NULL,
	[TovarColor] [int] NOT NULL,
	[TovarCountry] [int] NOT NULL,
 CONSTRAINT [PK_Tovares] PRIMARY KEY CLUSTERED 
(
	[TovarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.10.2019 22:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] NOT NULL,
	[Login] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
	[Password] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserName] [nvarchar](50) COLLATE Cyrillic_General_CS_AS NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([Id], [County]) VALUES (0, N'Россия')
INSERT [dbo].[Country] ([Id], [County]) VALUES (1, N'Китай')
INSERT [dbo].[Kontragent] ([Id], [Kontragent]) VALUES (0, N'Мебельная фабрика')
INSERT [dbo].[Kontragent] ([Id], [Kontragent]) VALUES (1, N'СтройГигант')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (0, N'Admin')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'Users')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Manager')
INSERT [dbo].[Sklad] ([Id], [SkladName]) VALUES (0, N'Основной')
INSERT [dbo].[Sklad] ([Id], [SkladName]) VALUES (1, N'Розничный')
INSERT [dbo].[TovarColor] ([Id], [Color]) VALUES (0, N'Красный')
INSERT [dbo].[TovarColor] ([Id], [Color]) VALUES (1, N'Черный')
INSERT [dbo].[TovarColor] ([Id], [Color]) VALUES (2, N'Белый')
INSERT [dbo].[TovarColor] ([Id], [Color]) VALUES (3, N'Серый')
INSERT [dbo].[Tovares] ([TovarId], [TovarName], [TovarArticle], [TovarColor], [TovarCountry]) VALUES (0, N'Стул', 12345, 1, 0)
INSERT [dbo].[Tovares] ([TovarId], [TovarName], [TovarArticle], [TovarColor], [TovarCountry]) VALUES (1, N'Стол', 13425, 2, 0)
INSERT [dbo].[Tovares] ([TovarId], [TovarName], [TovarArticle], [TovarColor], [TovarCountry]) VALUES (2, N'Кровать', 43132, 1, 1)
INSERT [dbo].[Tovares] ([TovarId], [TovarName], [TovarArticle], [TovarColor], [TovarCountry]) VALUES (3, N'Шкаф', 42513, 0, 0)
INSERT [dbo].[Tovares] ([TovarId], [TovarName], [TovarArticle], [TovarColor], [TovarCountry]) VALUES (4, N'Тумбочка', 12525, 1, 1)
INSERT [dbo].[Users] ([UserId], [Login], [Password], [RoleId], [UserName]) VALUES (0, N'Andrew', N'1234', 1, N'Андрей')
INSERT [dbo].[Users] ([UserId], [Login], [Password], [RoleId], [UserName]) VALUES (1, N'Nikita', N'1111', 1, N'Никита')
INSERT [dbo].[Users] ([UserId], [Login], [Password], [RoleId], [UserName]) VALUES (2, N'Denis', N'1111', 0, N'Денчик')
INSERT [dbo].[Users] ([UserId], [Login], [Password], [RoleId], [UserName]) VALUES (3, N'Manager', N'1111', 2, N'Оксана')
ALTER TABLE [dbo].[GetTovara]  WITH CHECK ADD  CONSTRAINT [FK_GetTovara_Role] FOREIGN KEY([Manager])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[GetTovara] CHECK CONSTRAINT [FK_GetTovara_Role]
GO
ALTER TABLE [dbo].[GetTovara]  WITH CHECK ADD  CONSTRAINT [FK_GetTovara_Sklad] FOREIGN KEY([Sklad])
REFERENCES [dbo].[Sklad] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GetTovara] CHECK CONSTRAINT [FK_GetTovara_Sklad]
GO
ALTER TABLE [dbo].[PostTovara]  WITH CHECK ADD  CONSTRAINT [FK_PostTovara_Kontragent] FOREIGN KEY([Kontragent])
REFERENCES [dbo].[Kontragent] ([Id])
GO
ALTER TABLE [dbo].[PostTovara] CHECK CONSTRAINT [FK_PostTovara_Kontragent]
GO
ALTER TABLE [dbo].[Tovares]  WITH CHECK ADD  CONSTRAINT [FK_Tovares_Country] FOREIGN KEY([TovarCountry])
REFERENCES [dbo].[Country] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tovares] CHECK CONSTRAINT [FK_Tovares_Country]
GO
ALTER TABLE [dbo].[Tovares]  WITH CHECK ADD  CONSTRAINT [FK_Tovares_TovarColor] FOREIGN KEY([TovarColor])
REFERENCES [dbo].[TovarColor] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tovares] CHECK CONSTRAINT [FK_Tovares_TovarColor]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [linecoreBase] SET  READ_WRITE 
GO
