USE [master]
GO
/****** Object:  Database [Trade2]    Script Date: 05.09.2024 17:42:45 ******/
CREATE DATABASE [Trade2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Trade2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Trade2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Trade2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Trade2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Trade2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Trade2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Trade2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Trade2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Trade2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Trade2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Trade2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Trade2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Trade2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Trade2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Trade2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Trade2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Trade2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Trade2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Trade2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Trade2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Trade2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Trade2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Trade2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Trade2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Trade2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Trade2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Trade2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Trade2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Trade2] SET  MULTI_USER 
GO
ALTER DATABASE [Trade2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Trade2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Trade2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Trade2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Trade2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Trade2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Trade2] SET QUERY_STORE = OFF
GO
USE [Trade2]
GO
/****** Object:  Table [dbo].[CategoryProduct]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryProduct] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CategoryProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ForIndex] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameofSupply]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameofSupply](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Supply] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NameofSupply] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDClient] [int] NULL,
	[OrderCreateDate] [date] NOT NULL,
	[OrderDeliveryDate] [date] NOT NULL,
	[OrderPickupPoint] [int] NOT NULL,
	[ApplyCode] [int] NOT NULL,
	[IDStatus] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderStatus]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nchar](10) NULL,
 CONSTRAINT [PK_OrderStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PickPoint]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PickPoint](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDIndex] [int] NOT NULL,
	[IDCity] [int] NOT NULL,
	[IDStreet] [int] NOT NULL,
	[House] [int] NULL,
 CONSTRAINT [PK_PickPoint] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Producer] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](100) NOT NULL,
	[IDSupply] [int] NOT NULL,
	[Unit] [nchar](50) NOT NULL,
	[Cost] [int] NOT NULL,
	[MaxDiscount] [int] NOT NULL,
	[IDProducer] [int] NOT NULL,
	[IDProvider] [int] NOT NULL,
	[IDCategoryProduct] [int] NOT NULL,
	[CurrentDiscount] [int] NOT NULL,
	[CountOnStorage] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NULL,
	[ProductPhoto] [image] NULL,
 CONSTRAINT [PK__Product__2EA7DCD5E57B5D7C] PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Provider] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Street] [nvarchar](max) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05.09.2024 17:42:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRole] [int] NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK__User__1788CCAC45DBB6A7] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategoryProduct] ON 

INSERT [dbo].[CategoryProduct] ([ID], [CategoryProduct]) VALUES (1, N'Для животных')
INSERT [dbo].[CategoryProduct] ([ID], [CategoryProduct]) VALUES (2, N'Товары для кошек')
INSERT [dbo].[CategoryProduct] ([ID], [CategoryProduct]) VALUES (3, N'Товары для собак')
SET IDENTITY_INSERT [dbo].[CategoryProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([ID], [City]) VALUES (1, N'Нефтеюганск')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Index] ON 

INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (1, N'125061')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (2, N'125703')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (3, N'125837')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (4, N'190949')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (5, N'344288')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (6, N'394060')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (7, N'394242')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (8, N'394782')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (9, N'400562')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (10, N'410172')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (11, N'410542')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (12, N'410661')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (13, N'420151')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (14, N'426030')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (15, N'443890')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (16, N'450375')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (17, N'450558')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (18, N'450983')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (19, N'454311')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (20, N'603002')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (21, N'603036')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (22, N'603379')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (23, N'603721')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (24, N'614164')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (25, N'614510')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (26, N'614611')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (27, N'614753')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (28, N'620839')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (29, N'625283')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (30, N'625560')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (31, N'625590')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (32, N'625683')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (33, N'630201')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (34, N'630370')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (35, N'660007')
INSERT [dbo].[Index] ([ID], [ForIndex]) VALUES (36, N'660540')
SET IDENTITY_INSERT [dbo].[Index] OFF
GO
SET IDENTITY_INSERT [dbo].[NameofSupply] ON 

INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (1, N'Игрушка')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (2, N'Клетка')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (3, N'Лакомство')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (4, N'Лежак')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (5, N'Миска')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (6, N'Мячик')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (7, N'Сухой корм')
INSERT [dbo].[NameofSupply] ([ID], [Supply]) VALUES (8, N'Щетка-варежка')
SET IDENTITY_INSERT [dbo].[NameofSupply] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (1, NULL, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 25, 601, 2)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (2, NULL, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 20, 602, 2)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (3, 9, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 22, 603, 1)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (4, NULL, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 24, 604, 1)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (5, NULL, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 25, 605, 1)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (6, 7, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 28, 606, 1)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (7, NULL, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 36, 607, 2)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (8, NULL, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 32, 608, 2)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (9, 1, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 34, 609, 2)
INSERT [dbo].[Order] ([ID], [IDClient], [OrderCreateDate], [OrderDeliveryDate], [OrderPickupPoint], [ApplyCode], [IDStatus]) VALUES (10, 8, CAST(N'2022-05-15' AS Date), CAST(N'2022-05-21' AS Date), 36, 610, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderProduct] ON 

INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (1, 1, N'А112Т4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (2, 2, N'F432F4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (3, 3, N'E532Q5', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (4, 4, N'G345E4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (5, 5, N'R356F4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (6, 6, N'H436R4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (7, 7, N'H342F5', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (8, 8, N'K436T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (9, 9, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (10, 10, N'M356R4', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (11, 1, N'G453T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (12, 2, N'Y324F4', 15)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (13, 3, N'T432F4', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (14, 4, N'E345R4', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (15, 5, N'E431R5', 10)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (16, 6, N'D643B5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (17, 7, N'Q245F5', 2)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (18, 8, N'V527T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (19, 9, N'K452T5', 1)
INSERT [dbo].[OrderProduct] ([ID], [OrderID], [ProductArticleNumber], [Count]) VALUES (20, 10, N'W548O7', 1)
SET IDENTITY_INSERT [dbo].[OrderProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderStatus] ON 

INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (1, N'Завершен  ')
INSERT [dbo].[OrderStatus] ([ID], [Status]) VALUES (2, N'Новый     ')
SET IDENTITY_INSERT [dbo].[OrderStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[PickPoint] ON 

INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (1, 5, 1, 28, 1)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (2, 24, 1, 25, 30)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (3, 7, 1, 7, 43)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (4, 36, 1, 23, 25)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (5, 3, 1, 30, 40)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (6, 2, 1, 16, 49)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (7, 29, 1, 17, 46)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (8, 26, 1, 11, 50)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (9, 19, 1, 14, 19)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (10, 35, 1, 15, 19)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (11, 21, 1, 20, 4)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (12, 18, 1, 8, 26)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (13, 8, 1, 28, 3)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (14, 20, 1, 4, 28)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (15, 17, 1, 12, 30)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (16, 6, 1, 26, 43)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (17, 12, 1, 29, 50)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (18, 31, 1, 7, 20)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (19, 32, 1, 1, NULL)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (20, 9, 1, 5, 32)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (21, 25, 1, 9, 47)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (22, 11, 1, 21, 46)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (23, 28, 1, 27, 8)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (24, 15, 1, 7, 1)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (25, 22, 1, 24, 46)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (26, 23, 1, 3, 41)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (27, 10, 1, 22, 13)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (28, 13, 1, 2, 32)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (29, 1, 1, 18, 8)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (30, 34, 1, 30, 24)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (31, 27, 1, 19, 35)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (32, 14, 1, 9, 44)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (33, 16, 1, 6, 44)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (34, 30, 1, 13, 12)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (35, 33, 1, 8, 17)
INSERT [dbo].[PickPoint] ([ID], [IDIndex], [IDCity], [IDStreet], [House]) VALUES (36, 4, 1, 10, 26)
SET IDENTITY_INSERT [dbo].[PickPoint] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (1, N'Cat Chow')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (2, N'Chappy')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (3, N'Dog Chow')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (4, N'Dreames')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (5, N'Fancy Pets')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (6, N'LIKER')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (7, N'Nobby')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (8, N'Pro Plan')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (9, N'TitBit')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (10, N'Triol')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (11, N'trixie')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (12, N'True Touch')
INSERT [dbo].[Producer] ([ID], [Producer]) VALUES (13, N'ZooM')
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'B427R5', 5, N'шт.                                               ', 400, 15, 10, 2, 1, 4, 5, N'Миска для животных Triol "Стрекоза", 450 мл', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'D356R4', 6, N'шт.                                               ', 600, 15, 11, 1, 3, 2, 16, N'Мячик для собак TRIXIE DentaFun (32942) зеленый / белый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'D563F4', 1, N'шт.                                               ', 600, 10, 10, 1, 3, 5, 5, N'Игрушка для собак Triol Бобер 41 см 12141053 бежевый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'D643B5', 7, N'шт.                                               ', 4100, 30, 1, 1, 2, 4, 9, N'Сухой корм для котят CAT CHOW с высоким содержанием домашней птицы', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'E345R4', 1, N'шт.                                               ', 199, 5, 5, 2, 2, 5, 7, N'Игрушка для животных «Котик» с кошачьей мятой FANCY PETS', N'E345R4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'E431R5', 3, N'шт.                                               ', 170, 5, 10, 2, 3, 5, 5, N'Лакомство для собак Triol Кость из жил 7.5 см, 4шт. в уп.', N'E431R5.png', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'E434U6', 3, N'шт.                                               ', 140, 20, 9, 2, 3, 3, 19, N'Лакомство для собак Titbit Лакомый кусочек Нарезка из говядины, 80 г', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'E466T6', 2, N'шт.                                               ', 3500, 30, 10, 2, 3, 5, 3, N'Клетка для собак Triol 30671002 61х45.5х52 см серый/белый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'E532Q5', 3, N'шт.                                               ', 166, 15, 9, 1, 3, 5, 18, N'Лакомство для собак Titbit Печенье Био Десерт с лососем стандарт, 350 г', N'E532Q5.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'F432F4', 7, N'шт.                                               ', 1200, 10, 8, 2, 2, 3, 15, N'Сухой корм для кошек Pro Plan с чувствительным пищеварением', N'F432F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'G345E4', 6, N'шт.                                               ', 300, 5, 6, 2, 3, 3, 19, N'Мячик для собак LIKER Мячик Лайкер (6294) оранжевый', N'G345E4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'G453T5', 8, N'шт.                                               ', 149, 15, 12, 2, 1, 2, 7, N'Щетка-варежка True Touch для вычесывания шерсти, синий', N'G453T5.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'G542F5', 7, N'шт.                                               ', 2190, 30, 8, 1, 3, 4, 7, N'Сухой корм для собак Pro Plan при чувствительном пищеварении, ягненок', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'H342F5', 1, N'шт.                                               ', 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Енот 41 см 12141063 серый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'H432F4', 5, N'шт.                                               ', 385, 10, 10, 2, 1, 2, 17, N'Миска Triol 9002/KIDP3211/30261087 400 мл серебристый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'H436R4', 1, N'шт.                                               ', 300, 15, 10, 1, 3, 2, 15, N'Игрушка для собак Triol 3D плетение EC-04/12171005 бежевый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'H542R6', 3, N'шт.                                               ', 177, 15, 10, 2, 3, 3, 15, N'Лакомство для собак Triol Мясные полоски из кролика, 70 г', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'H643W2', 5, N'шт.                                               ', 292, 25, 10, 1, 1, 3, 13, N'Миска Triol CB02/30231002 100 мл бежевый/голубой', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'K436T5', 6, N'шт.                                               ', 100, 5, 10, 2, 3, 4, 21, N'Мячик для собак Triol с косточками 12101096 желтый/зеленый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'K452T5', 4, N'шт.                                               ', 800, 25, 13, 2, 3, 2, 17, N'Лежак для собак и кошек ZooM Lama 40х30х8 см бежевый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'M356R4', 3, N'шт.                                               ', 50, 5, 9, 2, 3, 4, 6, N'Лакомство для собак Titbit Гематоген мясной Classic, 35 г', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'Q245F5', 1, N'шт.                                               ', 510, 5, 10, 2, 3, 2, 17, N'Игрушка для собак Triol Бобер 41 см 12141063 серый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'R356F4', 5, N'шт.                                               ', 234, 10, 7, 1, 3, 3, 17, N'Миска Nobby с рисунком Dog для собак 130 мл красный', N'R356F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'S245R4', 7, N'шт.                                               ', 280, 15, 1, 2, 2, 3, 8, N'Сухой корм для кошек CAT CHOW', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'T432F4', 7, N'шт.                                               ', 1700, 25, 2, 2, 3, 2, 5, N'Сухой корм для собак Chappi говядина по-домашнему, с овощами', N'T432F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'V352R4', 7, N'шт.                                               ', 1700, 25, 2, 1, 3, 4, 9, N'Сухой корм для собак Chappi Мясное изобилие, мясное ассорти', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'V527T5', 1, N'шт.                                               ', 640, 5, 10, 1, 3, 5, 4, N'Игрушка для собак Triol Ящерица 39 см коричневый', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'W548O7', 7, N'шт.                                               ', 600, 15, 3, 1, 3, 5, 15, N'Сухой корм для щенков DOG CHOW Puppy, ягненок 2.5 кг', N'Null', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'Y324F4', 3, N'шт.                                               ', 86, 5, 9, 1, 3, 4, 17, N'Лакомство для собак Titbit Косточки мясные с индейкой и ягненком, 145 г', N'Y324F4.jpg', NULL)
INSERT [dbo].[Product] ([ProductArticleNumber], [IDSupply], [Unit], [Cost], [MaxDiscount], [IDProducer], [IDProvider], [IDCategoryProduct], [CurrentDiscount], [CountOnStorage], [Description], [ProductName], [ProductPhoto]) VALUES (N'А112Т4', 3, N'шт.                                               ', 123, 30, 4, 1, 2, 3, 6, N'Лакомство для кошек Dreamies Подушечки с курицей, 140 г', N'А112Т4.png', NULL)
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([ID], [Provider]) VALUES (1, N'PetShop')
INSERT [dbo].[Provider] ([ID], [Provider]) VALUES (2, N'ZooMir')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Менеджер')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([ID], [Street]) VALUES (1, N'8 Марта')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (2, N'Вишневая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (3, N'Гоголя')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (4, N'Дзержинского')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (5, N'Зеленая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (6, N'Клубная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (7, N'Коммунистическая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (8, N'Комсомольская')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (9, N'Маяковского')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (10, N'Мичурина')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (11, N'Молодежная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (12, N'Набережная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (13, N'Некрасова')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (14, N'Новая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (15, N'Октябрьская')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (16, N'Партизанская')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (17, N'Победы')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (18, N'Подгорная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (19, N'Полевая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (20, N'Садовая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (21, N'Светлая')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (22, N'Северная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (23, N'Солнечная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (24, N'Спортивная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (25, N'Степная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (26, N'Фрунзе')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (27, N'Цветочная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (28, N'Чехова')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (29, N'Школьная')
INSERT [dbo].[Street] ([ID], [Street]) VALUES (30, N'Шоссейная')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (1, 2, N'Волкова', N'Эмилия', N'Артёмовна', N'nokupekidda2001@gmail.com', N'JlFRCZ')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (2, 3, N'Денисов', N'Михаил', N'Романович', N'frusubroppotou656@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (3, 1, N'Игнатьева', N'Алина', N'Михайловна', N'vilagajaunne-5170@yandex.ru', N'8ntwUp')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (4, 3, N'Соловьев', N'Ярослав', N'Маркович', N'frapreubrulloba1141@yandex.ru', N'rwVDh9')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (5, 1, N'Суслов', N'Илья', N'Арсентьевич', N'pixil59@gmail.com', N'2L6KZG')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (6, 3, N'Тимофеев', N'Михаил', N'Елисеевич', N'leuttevitrafo1998@mail.ru', N'RSbvHv')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (7, 2, N'Филимонов', N'Роберт', N'Васильевич', N'loudittoimmolau1900@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (8, 2, N'Чистякова', N'Виктория', N'Степановна', N'freineiciweijau888@yandex.ru', N'AtnDjr')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (9, 2, N'Шилова', N'Майя', N'Артемьевна', N'hittuprofassa4984@mail.com', N'gynQMT')
INSERT [dbo].[User] ([UserID], [UserRole], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword]) VALUES (10, 1, N'Яковлева
', N'Ярослава
', N'Даниэльевна
', N'deummecillummu-4992@mail.ru

', N'uzWC67
')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderStatus] FOREIGN KEY([IDStatus])
REFERENCES [dbo].[OrderStatus] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderStatus]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_PickPoint] FOREIGN KEY([OrderPickupPoint])
REFERENCES [dbo].[PickPoint] ([ID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_PickPoint]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([IDClient])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Order]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_Product] FOREIGN KEY([ProductArticleNumber])
REFERENCES [dbo].[Product] ([ProductArticleNumber])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_Product]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_City] FOREIGN KEY([IDCity])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_City]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Index] FOREIGN KEY([IDIndex])
REFERENCES [dbo].[Index] ([ID])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Index]
GO
ALTER TABLE [dbo].[PickPoint]  WITH CHECK ADD  CONSTRAINT [FK_PickPoint_Street] FOREIGN KEY([IDStreet])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[PickPoint] CHECK CONSTRAINT [FK_PickPoint_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_CategoryProduct] FOREIGN KEY([IDCategoryProduct])
REFERENCES [dbo].[CategoryProduct] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_CategoryProduct]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_NameofSupply] FOREIGN KEY([IDSupply])
REFERENCES [dbo].[NameofSupply] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_NameofSupply]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Producer] FOREIGN KEY([IDProducer])
REFERENCES [dbo].[Producer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Producer]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Provider] FOREIGN KEY([IDProvider])
REFERENCES [dbo].[Provider] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Provider]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [Trade2] SET  READ_WRITE 
GO
