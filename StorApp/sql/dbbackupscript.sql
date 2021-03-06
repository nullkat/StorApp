USE [master]
GO
/****** Object:  Database [StorDB]    Script Date: 28.04.2022 15:30:22 ******/
CREATE DATABASE [StorDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StorDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StorDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StorDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\StorDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StorDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StorDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StorDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StorDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StorDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StorDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StorDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StorDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StorDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StorDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StorDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StorDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StorDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StorDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StorDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StorDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StorDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StorDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StorDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StorDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StorDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StorDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StorDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StorDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StorDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [StorDB] SET  MULTI_USER 
GO
ALTER DATABASE [StorDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StorDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StorDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StorDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StorDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StorDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [StorDB] SET QUERY_STORE = OFF
GO
USE [StorDB]
GO
/****** Object:  Table [dbo].[Contractor]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contractor](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Contractor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoyaltyCard]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoyaltyCard](
	[Number] [nvarchar](16) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Lastname] [nvarchar](50) NOT NULL,
	[Midlename] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_LoyaltyCard] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movement]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movement](
	[Id] [int] NOT NULL,
	[WerehauseFrom] [int] NULL,
	[WerehauseTo] [int] NOT NULL,
	[DateMovement] [date] NOT NULL,
	[Count] [int] NOT NULL,
	[Product] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_Movement] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpeningHour]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpeningHour](
	[Id] [int] NOT NULL,
	[PointOfSale] [int] NOT NULL,
	[Day] [nvarchar](50) NOT NULL,
	[StartWork] [time](7) NOT NULL,
	[EndWork] [time](7) NOT NULL,
	[StartDinner] [time](7) NOT NULL,
	[ExitDinner] [time](7) NOT NULL,
 CONSTRAINT [PK_OpeningHour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Photo_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PointOfSale]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PointOfSale](
	[Id] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Warehouse] [int] NOT NULL,
 CONSTRAINT [PK_PointOfSale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Manufacturer] [nvarchar](50) NOT NULL,
	[Photo] [int] NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sale]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[Id] [int] NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[PaymentType] [nvarchar](50) NOT NULL,
	[LoyaltyCard] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaleProduct]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaleProduct](
	[Product] [int] NOT NULL,
	[Sale] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrafficPath]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrafficPath](
	[Id] [int] NOT NULL,
	[PointOfSale] [int] NOT NULL,
	[Datetime] [datetime] NOT NULL,
	[Direction] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_TrafficPaht] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](100) NULL,
	[Login] [nchar](100) NULL,
	[Password] [nchar](100) NULL,
	[Role] [nchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouse]    Script Date: 28.04.2022 15:30:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouse](
	[Id] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Contractor] [int] NOT NULL,
	[Abbr] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Warehouse] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Contractor] ([Id], [Name]) VALUES (1, N'LG')
INSERT [dbo].[Contractor] ([Id], [Name]) VALUES (2, N'Samsung')
INSERT [dbo].[Contractor] ([Id], [Name]) VALUES (3, N'Apple')
GO
INSERT [dbo].[LoyaltyCard] ([Number], [Fullname], [Lastname], [Midlename], [Address]) VALUES (N'58591736', N'Марьян', N'Зимина', N'Марковна', N' ')
INSERT [dbo].[LoyaltyCard] ([Number], [Fullname], [Lastname], [Midlename], [Address]) VALUES (N'62316021', N'Матвей', N'Королёв', N'Михайлович', N' ')
INSERT [dbo].[LoyaltyCard] ([Number], [Fullname], [Lastname], [Midlename], [Address]) VALUES (N'93751790', N'Варвара', N'Семенова', N'Артёмовна', N' ')
GO
INSERT [dbo].[Movement] ([Id], [WerehauseFrom], [WerehauseTo], [DateMovement], [Count], [Product], [Price]) VALUES (1, 1, 2, CAST(N'2020-02-27' AS Date), 5, 1, 25000)
INSERT [dbo].[Movement] ([Id], [WerehauseFrom], [WerehauseTo], [DateMovement], [Count], [Product], [Price]) VALUES (2, 3, 1, CAST(N'2020-07-14' AS Date), 1, 2, 16000)
INSERT [dbo].[Movement] ([Id], [WerehauseFrom], [WerehauseTo], [DateMovement], [Count], [Product], [Price]) VALUES (3, 2, 1, CAST(N'2020-11-25' AS Date), 1, 3, 3000)
GO
INSERT [dbo].[OpeningHour] ([Id], [PointOfSale], [Day], [StartWork], [EndWork], [StartDinner], [ExitDinner]) VALUES (1, 1, N'6', CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time))
INSERT [dbo].[OpeningHour] ([Id], [PointOfSale], [Day], [StartWork], [EndWork], [StartDinner], [ExitDinner]) VALUES (2, 2, N'5', CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time))
INSERT [dbo].[OpeningHour] ([Id], [PointOfSale], [Day], [StartWork], [EndWork], [StartDinner], [ExitDinner]) VALUES (3, 3, N'5', CAST(N'08:00:00' AS Time), CAST(N'17:00:00' AS Time), CAST(N'12:00:00' AS Time), CAST(N'13:00:00' AS Time))
GO
INSERT [dbo].[PointOfSale] ([Id], [Address], [Warehouse]) VALUES (1, N'Адрес1', 1)
INSERT [dbo].[PointOfSale] ([Id], [Address], [Warehouse]) VALUES (2, N'Адрес2', 2)
INSERT [dbo].[PointOfSale] ([Id], [Address], [Warehouse]) VALUES (3, N'Адрес3', 3)
GO
INSERT [dbo].[Product] ([Id], [Category], [Manufacturer], [Photo], [Name]) VALUES (1, N'Электроника', N'LG', NULL, N'Стиральная машина')
INSERT [dbo].[Product] ([Id], [Category], [Manufacturer], [Photo], [Name]) VALUES (2, N'Электроника', N'Samsung', NULL, N'Смартфон Samsung A10')
INSERT [dbo].[Product] ([Id], [Category], [Manufacturer], [Photo], [Name]) VALUES (3, N'Мебель', N'Manufacturer', NULL, N'Диван')
GO
INSERT [dbo].[Sale] ([Id], [Datetime], [PaymentType], [LoyaltyCard]) VALUES (1, CAST(N'2020-02-27T18:02:12.000' AS DateTime), N'Кредитная карта', N'62316021')
INSERT [dbo].[Sale] ([Id], [Datetime], [PaymentType], [LoyaltyCard]) VALUES (2, CAST(N'2020-07-14T03:56:51.000' AS DateTime), N'Наличка
', N'58591736')
INSERT [dbo].[Sale] ([Id], [Datetime], [PaymentType], [LoyaltyCard]) VALUES (3, CAST(N'2020-11-25T08:18:19.000' AS DateTime), N'Кредитная карта', N'93751790')
GO
INSERT [dbo].[SaleProduct] ([Product], [Sale]) VALUES (1, 1)
INSERT [dbo].[SaleProduct] ([Product], [Sale]) VALUES (2, 2)
INSERT [dbo].[SaleProduct] ([Product], [Sale]) VALUES (3, 3)
GO
INSERT [dbo].[TrafficPath] ([Id], [PointOfSale], [Datetime], [Direction]) VALUES (1, 1, CAST(N'2020-02-27T18:02:12.000' AS DateTime), N'2')
INSERT [dbo].[TrafficPath] ([Id], [PointOfSale], [Datetime], [Direction]) VALUES (2, 2, CAST(N'2020-07-14T03:56:00.000' AS DateTime), N'3')
INSERT [dbo].[TrafficPath] ([Id], [PointOfSale], [Datetime], [Direction]) VALUES (3, 3, CAST(N'2020-11-25T08:18:00.000' AS DateTime), N'4')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [Fullname], [Login], [Password], [Role]) VALUES (1, N'Королев Матвей Михайлович
', N'KorolevMM                                                                                           ', N'Korolev                                                                                             ', N'Менеджер                                                                                            ')
INSERT [dbo].[Users] ([id], [Fullname], [Login], [Password], [Role]) VALUES (2, N'Зимина Марьям Марковна
', N'ZiminaMM                                                                                            ', N'Zimina                                                                                              ', N'Кладовщик                                                                                           ')
INSERT [dbo].[Users] ([id], [Fullname], [Login], [Password], [Role]) VALUES (3, N'Семенова Варвара Артёмовна
', N'SemyonovaVA                                                                                         ', N'Semyonova                                                                                           ', N'Продавец                                                                                            ')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[Warehouse] ([Id], [Address], [Contractor], [Abbr]) VALUES (1, N'Адрес склада', 1, N'LGS')
INSERT [dbo].[Warehouse] ([Id], [Address], [Contractor], [Abbr]) VALUES (2, N'Адрес склада2', 2, N'SHip')
INSERT [dbo].[Warehouse] ([Id], [Address], [Contractor], [Abbr]) VALUES (3, N'Адрес клада3', 3, N'Ship3')
GO
ALTER TABLE [dbo].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[Movement] CHECK CONSTRAINT [FK_Movement_Product]
GO
ALTER TABLE [dbo].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Warehouse] FOREIGN KEY([WerehauseFrom])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Movement] CHECK CONSTRAINT [FK_Movement_Warehouse]
GO
ALTER TABLE [dbo].[Movement]  WITH CHECK ADD  CONSTRAINT [FK_Movement_Warehouse1] FOREIGN KEY([WerehauseTo])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[Movement] CHECK CONSTRAINT [FK_Movement_Warehouse1]
GO
ALTER TABLE [dbo].[OpeningHour]  WITH CHECK ADD  CONSTRAINT [FK_OpeningHour_PointOfSale] FOREIGN KEY([PointOfSale])
REFERENCES [dbo].[PointOfSale] ([Id])
GO
ALTER TABLE [dbo].[OpeningHour] CHECK CONSTRAINT [FK_OpeningHour_PointOfSale]
GO
ALTER TABLE [dbo].[PointOfSale]  WITH CHECK ADD  CONSTRAINT [FK_PointOfSale_Warehouse] FOREIGN KEY([Warehouse])
REFERENCES [dbo].[Warehouse] ([Id])
GO
ALTER TABLE [dbo].[PointOfSale] CHECK CONSTRAINT [FK_PointOfSale_Warehouse]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Photo1] FOREIGN KEY([Photo])
REFERENCES [dbo].[Photo] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Photo1]
GO
ALTER TABLE [dbo].[Sale]  WITH CHECK ADD  CONSTRAINT [FK_Sale_LoyaltyCard] FOREIGN KEY([LoyaltyCard])
REFERENCES [dbo].[LoyaltyCard] ([Number])
GO
ALTER TABLE [dbo].[Sale] CHECK CONSTRAINT [FK_Sale_LoyaltyCard]
GO
ALTER TABLE [dbo].[SaleProduct]  WITH CHECK ADD  CONSTRAINT [FK_SaleProduct_Product] FOREIGN KEY([Product])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[SaleProduct] CHECK CONSTRAINT [FK_SaleProduct_Product]
GO
ALTER TABLE [dbo].[TrafficPath]  WITH CHECK ADD  CONSTRAINT [FK_TrafficPaht_PointOfSale] FOREIGN KEY([PointOfSale])
REFERENCES [dbo].[PointOfSale] ([Id])
GO
ALTER TABLE [dbo].[TrafficPath] CHECK CONSTRAINT [FK_TrafficPaht_PointOfSale]
GO
ALTER TABLE [dbo].[Warehouse]  WITH CHECK ADD  CONSTRAINT [FK_Warehouse_Contractor] FOREIGN KEY([Contractor])
REFERENCES [dbo].[Contractor] ([Id])
GO
ALTER TABLE [dbo].[Warehouse] CHECK CONSTRAINT [FK_Warehouse_Contractor]
GO
USE [master]
GO
ALTER DATABASE [StorDB] SET  READ_WRITE 
GO
