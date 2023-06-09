USE [master]
GO
/****** Object:  Database [Shop]    Script Date: 5/12/2023 4:39:27 PM ******/
CREATE DATABASE [Shop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Shop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Shop.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Shop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Shop_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Shop] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Shop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Shop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Shop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Shop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Shop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Shop] SET ARITHABORT OFF 
GO
ALTER DATABASE [Shop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Shop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Shop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Shop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Shop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Shop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Shop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Shop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Shop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Shop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Shop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Shop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Shop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Shop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Shop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Shop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Shop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Shop] SET  MULTI_USER 
GO
ALTER DATABASE [Shop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Shop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Shop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Shop] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Shop] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Shop] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Shop] SET QUERY_STORE = ON
GO
ALTER DATABASE [Shop] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Shop]
GO
/****** Object:  Table [dbo].[banner]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[banner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[price] [float] NULL,
	[decription] [ntext] NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image_product]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image_product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[img] [nvarchar](max) NULL,
	[order] [int] NULL,
	[productid] [int] NULL,
 CONSTRAINT [PK_image_product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[news]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[detail] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](50) NOT NULL,
	[customname] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](max) NULL,
	[total] [int] NULL,
	[description] [nvarchar](max) NULL,
	[typepayment] [int] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderdetail]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
	[price] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_orderdetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[price] [float] NULL,
	[img] [nvarchar](max) NULL,
	[description] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[size] [nvarchar](50) NULL,
	[color] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[datebegin] [smalldatetime] NULL,
	[categoryid] [int] NULL,
 CONSTRAINT [PK_product_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/12/2023 4:39:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](100) NULL,
	[password] [nvarchar](max) NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [nvarchar](max) NULL,
	[phone] [nvarchar](100) NULL,
	[image] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[admin] [bit] NULL,
	[datebegin] [smalldatetime] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (9, N'Bàn ăn', N'https://localhost:44307/san-pham', N'ban-an', 0, 1, CAST(N'2023-05-11T10:04:00' AS SmallDateTime))
INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (10, N'Ghế', N'https://localhost:44307/san-pham', N'ghe', 0, 2, CAST(N'2023-05-11T10:05:00' AS SmallDateTime))
INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (11, N'Giường', N'https://localhost:44307/san-pham', N'giuong', 0, 3, CAST(N'2023-05-11T10:05:00' AS SmallDateTime))
INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (12, N'Bàn phụ', N'https://localhost:44307/san-pham', N'ban-phu', 0, 4, CAST(N'2023-05-11T10:07:00' AS SmallDateTime))
INSERT [dbo].[category] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (13, N'Sofa', N'https://localhost:44307/san-pham', N'sofa', 0, 5, CAST(N'2023-05-11T10:09:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[image_product] ON 

INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (26, N'MI_BA_01.jpg', 0, 27)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (27, N'MI_BA_02.jpg', 1, 27)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (28, N'MI_BA_03.jpg', 2, 27)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (29, N'MI_BA_04.jpg', 3, 27)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (30, N'DI_BA_01.jpg', 0, 28)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (31, N'DI_BA_02.jpg', 1, 28)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (32, N'DI_BA_03.jpg', 2, 28)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (33, N'DI_BA_04.jpg', 3, 28)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (34, N'KI_BA_01.jpg', 0, 29)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (35, N'KI_BA_02.jpg', 1, 29)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (36, N'KI_BA_03.jpg', 2, 29)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (37, N'KI_BA_04.jpg', 3, 29)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (38, N'KA_GA_01.jpeg', 0, 30)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (39, N'KA_GA_02.jpg', 1, 30)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (40, N'KA_GA_03.jpg', 2, 30)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (41, N'KA_GA_04.jpg', 3, 30)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (42, N'CA_BA_01.jpg', 0, 31)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (43, N'CA_BA_02.jpg', 1, 31)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (44, N'CA_BA_03.jpg', 2, 31)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (45, N'CA_BA_04.jpg', 3, 31)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (46, N'BO_BA_01.jpg', 0, 32)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (47, N'BO_BA_02.jpg', 1, 32)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (48, N'BO_BA_03.jpg', 2, 32)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (49, N'CE_GA_01.jpg', 0, 33)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (50, N'CE_GA_02.jpg', 1, 33)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (51, N'CE_GA_03.jpg', 2, 33)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (52, N'CE_GA_04.jpg', 3, 33)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (53, N'KAL_GA_01.jpg', 0, 34)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (54, N'KAL_GA_02.jpg', 1, 34)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (55, N'KAL_GA_03.jpg', 2, 34)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (56, N'KAL_GA_04.jpg', 3, 34)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (57, N'DA_GI_01.jpg', 0, 35)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (58, N'DA_GI_02.jpg', 1, 35)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (59, N'DA_GI_03.jpg', 2, 35)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (60, N'DA_GI_04.jpg', 3, 35)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (61, N'BE_GI_01.jpg', 0, 36)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (62, N'BE_GI_02.jpg', 1, 36)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (63, N'BE_GI_03.jpg', 2, 36)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (64, N'BE_GI_04.jpg', 3, 36)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (65, N'CA_BP_01.jpg', 0, 37)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (66, N'CA_BP_02.jpg', 1, 37)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (67, N'CA_BP_03.jpg', 2, 37)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (68, N'ZO_BP_01.jpg', 0, 38)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (69, N'ZO_BP_02.jpg', 1, 38)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (70, N'SH_BP_01.jpeg', 0, 39)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (71, N'SH_BP_02.jpeg', 1, 39)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (72, N'SH_BP_03.jpg', 2, 39)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (73, N'SH_BP_04.jpg', 3, 39)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (74, N'QI_BP_01.jpg', 0, 40)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (75, N'QI_BP_02.jpg', 1, 40)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (76, N'QI_BP_03.jpg', 2, 40)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (77, N'QI_BP_04.jpg', 3, 40)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (79, N'BU_SO_02.jpg', 0, 42)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (80, N'BU_SO_03.jpg', 1, 42)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (81, N'BU_SO_04.jpg', 2, 42)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (82, N'IS_SOFA_01.jpg', 0, 43)
INSERT [dbo].[image_product] ([id], [img], [order], [productid]) VALUES (83, N'IS_SOFA_02.jpg', 1, 43)
SET IDENTITY_INSERT [dbo].[image_product] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (1, N'Trang chủ', N'https://localhost:44307/', N'Home', 0, 1, NULL)
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (4, N'Giỏ hàng', N'https://localhost:44307/', N'gio-hang', 0, 4, CAST(N'2023-05-02T14:31:00' AS SmallDateTime))
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (7, N'Sản phẩm', NULL, NULL, 0, 3, NULL)
INSERT [dbo].[Menu] ([id], [name], [link], [meta], [hide], [order], [datebegin]) VALUES (8, N'Tin tức', N'https://localhost:44307/', N'tin-tuc', 0, 2, NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([id], [name], [img], [description], [link], [detail], [meta], [hide], [order], [datebegin]) VALUES (11, N'An Cường tung loạt sản phẩm phù hợp xu hướng thiết kế mới', N'tt1.jpg', N'Dịp n&agrave;y, kh&aacute;ch tới showroom An Cường nhận được voucher mua h&agrave;ng v&agrave; nhiều ưu đ&atilde;i, qu&agrave; tặng... từ c&aacute;c thương hiệu nổi tiếng.', NULL, N'&nbsp;
<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759934" style="margin: 0px auto; padding: 0px 0px 733.325px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy lazy-blur lazy-unblur" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/GO-C-TRU-NG-BA-I-SA-N-PHA-M-MO-I-1680937207.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=TE7ORoYyRckXDhUED1dmbg" style="border:0px; box-sizing:border-box; filter:unset; font-size:0px; height:733.325px; left:550px; line-height:0; margin:0px; max-width:100%; opacity:1; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%); transition:opacity 1s ease-out 0s; will-change:opacity" /></div>

<div class="action_thumb flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; position: absolute; top: 10px; right: 10px; background: rgb(23, 25, 26); height: 32px; border-radius: 3px;">&nbsp;</div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Đầu th&aacute;ng 4, Gỗ An Cường tung ra thị trường h&agrave;ng loạt sản phẩm mới với chất lượng bền - đẹp, thi c&ocirc;ng nhanh v&agrave; gi&aacute; th&agrave;nh hợp l&yacute;. Một số sản phẩm ti&ecirc;u biểu như tấm trang tr&iacute; nội thất trần v&agrave; v&aacute;ch Wall &amp; Ceiling, tấm Lamri ốp tường v&agrave; tấm trang tr&iacute; kh&ocirc;ng gian nội thất Acoustic Panel...</p>

<p>Theo đại diện An Cường, c&aacute;c sản phẩm đ&aacute;p ứng xu hướng ph&aacute;t triển mạnh mẽ của ng&agrave;nh vật liệu nội thất khu vực cũng như to&agrave;n cầu, tạo sự kh&aacute;c biệt v&agrave; nhiều trải nghiệm mới cho kh&aacute;ch h&agrave;ng, đ&aacute;p ứng nhu cầu của thị trường.</p>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759935" style="margin: 0px auto; padding: 0px 0px 700px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 611.05px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy lazy-blur lazy-unblur" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/image001-1680937240.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Bfd4ENlXN9HoeKqB9pCDwA" style="border:0px; box-sizing:border-box; filter:unset; font-size:0px; height:700px; left:340px; line-height:0; margin:0px; max-width:100%; opacity:1; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%); transition:opacity 1s ease-out 0s; will-change:opacity" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Sản phẩm tấm Wall &amp; Ceiling trang tr&iacute; trần v&agrave; v&aacute;ch c&oacute; lợi thế thi c&ocirc;ng nhanh, gi&aacute; th&agrave;nh hợp l&yacute;.</p>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759936" style="margin: 0px auto; padding: 0px 0px 869.912px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy lazy-blur lazy-unblur" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/image002-1680937271.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ly19uex1rCu5DgYysLJU8g" style="border:0px; box-sizing:border-box; filter:unset; font-size:0px; height:869.912px; left:550px; line-height:0; margin:0px; max-width:100%; opacity:1; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%); transition:opacity 1s ease-out 0s; will-change:opacity" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Tấm Lamri trang tr&iacute; ốp tường tạo điểm nhấn sang trọng cho từng kh&ocirc;ng gian nội thất.</p>
</div>
</div>

<div class="banner-ads width_common mb20 banner-height-250" style="margin: 0px 0px 20px; padding: 20px 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 1100px; float: left; text-align: center; overflow: hidden; height: 292px; border-top: 1px solid rgb(117, 117, 117); border-bottom: 1px solid rgb(117, 117, 117); transition: all 0.6s ease-in-out 0s;">
<div id="sis_breakpage1" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; min-height: 0px; display: flex; justify-content: center; transition: none 0s ease 0s; width: 1100px; position: relative; margin-left: 0px !important;">
<div id="google_ads_iframe_/27973503/Vnexpress/Desktop/Breakpage1/Kinhdoanh/Kinhdoanh.doanhnghiep.detail_0__container__" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0pt none;"><iframe frameborder="0" height="250" id="google_ads_iframe_/27973503/Vnexpress/Desktop/Breakpage1/Kinhdoanh/Kinhdoanh.doanhnghiep.detail_0" name="google_ads_iframe_/27973503/Vnexpress/Desktop/Breakpage1/Kinhdoanh/Kinhdoanh.doanhnghiep.detail_0" scrolling="no" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border-width: 0px; border-style: initial; vertical-align: bottom;" title="3rd party ad content" width="1100"></iframe></div>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759937" style="margin: 0px auto; padding: 0px 0px 731.5px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/image003-1680937319.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=KFEqCV8CV532tuYwS21pZg" style="border:0px; box-sizing:border-box; font-size:0px; height:731.5px; left:550px; line-height:0; margin:0px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%)" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Tấm trang tr&iacute; Acoustic l&agrave;m đẹp kh&ocirc;ng gian nội thất, thi c&ocirc;ng nhanh, bền, đẹp v&agrave; gi&aacute; th&agrave;nh hợp l&yacute;</p>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759938" style="margin: 0px auto; padding: 0px 0px 738.825px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/image004-1680937378.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=2IAqmIS_8g1nLZOB6NAaKg" style="border:0px; box-sizing:border-box; font-size:0px; height:738.825px; left:550px; line-height:0; margin:0px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%)" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Dịp n&agrave;y, Gỗ An Cường tung ra d&ograve;ng vật liệu trang tr&iacute; mới như: Laminate Digital v&agrave; Sky Lux Acrylic - d&ograve;ng sản phẩm mang lại hiệu ứng b&oacute;ng s&acirc;u, sang trọng, hiện đại c&oacute; hiệu ứng như đ&agrave;n piano, hứa hẹn n&acirc;ng tầm cho to&agrave;n bộ kh&ocirc;ng gian nội thất. Hiện nay, thương hiệu An Cường c&oacute; d&ograve;ng ti&ecirc;u chuẩn v&agrave; cao cấp.</p>

<p>Theo đại diện doanh nghiệp, đ&acirc;y l&agrave; d&ograve;ng cao cấp nhất hang tung ra thị trường). Trong ảnh l&agrave; sản phẩm Sky Lux Acrylic - d&ograve;ng sản phẩm b&oacute;ng gương cao cấp nhất c&oacute; hiệu ứng Piano Gloss.</p>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759939" style="margin: 0px auto; padding: 0px 0px 732.412px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/image005-1680937415.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=01JmAlk8WRztax_FUpd6Ww" style="border:0px; box-sizing:border-box; font-size:0px; height:732.412px; left:550px; line-height:0; margin:0px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%)" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Tấm Laminate Digital đ&aacute;p ứng nhiều phong c&aacute;ch thiết kế nội thất đặc biệt.</p>
</div>
</div>

<div class="banner-ads width_common mb20 banner-height-250" style="margin: 0px 0px 20px; padding: 20px 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 1100px; float: left; text-align: center; overflow: hidden; height: 292px; border-top: 1px solid rgb(117, 117, 117); border-bottom: 1px solid rgb(117, 117, 117); transition: all 0.6s ease-in-out 0s;">
<div id="sis_breakpage2" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; min-height: 0px; display: flex; justify-content: center; transition: none 0s ease 0s; width: 1100px; position: relative; margin-left: 0px !important;">
<div id="google_ads_iframe_/27973503/Vnexpress/Desktop/Breakpage2/Kinhdoanh/Kinhdoanh.doanhnghiep.detail_0__container__" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0pt none;"><iframe frameborder="0" height="250" id="google_ads_iframe_/27973503/Vnexpress/Desktop/Breakpage2/Kinhdoanh/Kinhdoanh.doanhnghiep.detail_0" name="google_ads_iframe_/27973503/Vnexpress/Desktop/Breakpage2/Kinhdoanh/Kinhdoanh.doanhnghiep.detail_0" scrolling="no" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border-width: 0px; border-style: initial; vertical-align: bottom;" title="3rd party ad content" width="1100"></iframe></div>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759940" style="margin: 0px auto; padding: 0px 0px 733.325px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/KHA-M-THAM-QUAN-VA-TI-M-HIE-U-SA-N-PHA-M-1680937481.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=wytj-BpPYr9FHMEBP681mg" style="border:0px; box-sizing:border-box; font-size:0px; height:733.325px; left:550px; line-height:0; margin:0px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%)" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>B&ecirc;n cạnh đ&oacute;, kh&aacute;ch h&agrave;ng l&agrave; người ti&ecirc;u d&ugrave;ng đến t&igrave;m hiểu sản phẩm Gỗ An Cường để ho&agrave;n thiện nội thất nh&agrave; ở được nh&acirc;n vi&ecirc;n tư vấn về việc sử dụng v&agrave; phối m&agrave;u vật liệu, c&aacute;ch sử dụng vật liệu v&agrave; phụ kiện nội thất đ&uacute;ng c&aacute;ch, c&aacute;c giải ph&aacute;p v&agrave; c&ocirc;ng năng cho từng kh&ocirc;ng gian sống.</p>
</div>
</div>

<div class="item_slide_show clearfix" style="margin: 0px 0px 50px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 1100px; float: left; flex-direction: column; display: table !important;">
<div class="block_thumb_slide_show" id="slide_show_32759941" style="margin: 0px auto; padding: 0px 0px 733.325px; box-sizing: border-box; text-rendering: optimizelegibility; cursor: -webkit-zoom-in; background: rgba(255, 255, 255, 0.05); min-width: 680px; max-width: 100%; position: relative; display: table; justify-content: center; overflow: hidden; width: 1100px;">
<div class="block_thumb_picture" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;"><img alt="" class="lazied lazy" src="https://i1-kinhdoanh.vnecdn.net/2023/04/08/CHU-O-NG-TRI-NH-KHUYE-N-MA-I-1680937533.jpg?w=1200&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Q_pz08lKpL5mKvM-77tmzA" style="border:0px; box-sizing:border-box; font-size:0px; height:733.325px; left:550px; line-height:0; margin:0px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; transform:translateX(-50%)" /></div>
</div>

<div class="desc_cation" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; max-width: 680px; clear: both; font-size: 16px; line-height: 25.6px;">
<p>Dịp n&agrave;y, kh&aacute;ch h&agrave;ng đến tham quan showroom An Cường tr&ecirc;n to&agrave;n quốc sẽ nhận được voucher mua h&agrave;ng v&agrave; h&agrave;ng loạt ưu đ&atilde;i, c&ugrave;ng nhiều qu&agrave; tặng l&ecirc;n đến 16 triệu đồng từ thương hiệu thiết bị bếp Malloca, nội thất rời AConcept, phụ kiện ho&agrave;n thiện nội thất Hettich v&agrave; Imundex.</p>

<p>Đại diện doanh nghiệp kỳ vọng, việc tung ra h&agrave;ng loạt sản phẩm vật liệu v&agrave; giải ph&aacute;p mới c&oacute; độ bền cao, dễ thi c&ocirc;ng lắp đặt v&agrave; gi&aacute; th&agrave;nh hợp l&yacute; gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; nhiều lưạ chọn, dễ d&agrave;ng t&igrave;m được giải ph&aacute;p nội thất ph&ugrave; hợp cho kh&ocirc;ng gian sống.</p>

<p>L&agrave; c&ocirc;ng ty trong lĩnh vực vật liệu, giải ph&aacute;p v&agrave; nội thất l&agrave;m từ gỗ c&ocirc;ng nghiệp, An Cường ch&uacute; trọng dẫn đầu xu hướng v&agrave; tung ra những sản phẩm, giải ph&aacute;p mới đến kh&aacute;ch h&agrave;ng, đa dạng h&oacute;a danh mục sản phẩm trong ng&agrave;nh nội thất.</p>
</div>
</div>

<div class="width-detail-photo" style="margin: 0px auto; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; clear: both; width: 680px; max-width: 680px;">
<p>&nbsp;</p>

<p style="text-align:right"><strong>Ho&agrave;i Phong</strong><br />
(Ảnh:&nbsp;<em>Gỗ An Cường</em>)</p>
</div>
', N'an-cuong-tung-loat-san-pham-phu-hop-xu-huong-thiet-ke-moi', 0, 0, CAST(N'2023-05-11T00:00:00' AS SmallDateTime))
INSERT [dbo].[news] ([id], [name], [img], [description], [link], [detail], [meta], [hide], [order], [datebegin]) VALUES (12, N'10 sai lầm decor khiến nhà kém sang', N'tt2.jpg', N'<span style="background-color:rgb(252, 250, 246); color:rgb(34, 34, 34); font-family:arial; font-size:18px">Lựa chọn sai c&aacute;ch trang tr&iacute; khiến bạn mất nhiều tiền nhưng ng&ocirc;i nh&agrave; vẫn kh&ocirc;ng đẹp như mong đợi. Dưới đ&acirc;y l&agrave; 10 sai lầm phổ biến.</span>', NULL, N'<p><strong>Đưa nguy&ecirc;n thiết kế ở cửa h&agrave;ng về nh&agrave;</strong></p>

<p>Mỗi cửa h&agrave;ng đều c&oacute; c&aacute;c mẫu thiết kế nội thất ri&ecirc;ng mang t&iacute;nh biểu tượng của thương hiệu đ&oacute; chứ kh&ocirc;ng phải cho ng&ocirc;i nh&agrave; của bạn. C&aacute;c thiết kế n&agrave;y c&oacute; thể nhấn mạnh một phong c&aacute;ch cụ thể hoặc phụ thuộc v&agrave;o m&agrave;u sắc của m&oacute;n đồ nội thất. Điểm chung của c&aacute;c mẫu thiết kế n&agrave;y l&agrave; ch&uacute;ng dễ d&agrave;ng sao ch&eacute;p.</p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c mẫu thiết kế c&oacute; thể kh&ocirc;ng tận dụng được kh&ocirc;ng gian ng&ocirc;i nh&agrave; của bạn. Điều n&agrave;y c&oacute; thể l&agrave;m cho một số bố cục trở n&ecirc;n gượng &eacute;p, nếu kh&ocirc;ng muốn n&oacute;i l&agrave; kh&ocirc;ng hiệu quả.</p>

<p>Sự xuất hiện của đồ nội thất được l&agrave;m sẵn một c&aacute;ch đơn điệu c&oacute; thể khiến ngay cả một căn hộ chung cư đắt tiền tr&ocirc;ng giống như một ph&ograve;ng trưng b&agrave;y cửa h&agrave;ng đồ nội thất rẻ tiền.</p>

<div class="action_thumb flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; position: absolute; top: 10px; right: 10px; background: rgb(23, 25, 26); height: 32px; border-radius: 3px; transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1); z-index: 9;">&nbsp;</div>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 481.95px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Ảnh minh họa: Pexel" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2023/02/13/Decor-jpeg-3102-1676275155.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=Xgtwsk4rEZJr0iHH0Vqp_w" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" />
<div class="embed-container-ads" style="margin-top: 0px; margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-left: 0px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; background: transparent; height: 100px; position: absolute; bottom: -1px; margin-bottom: 0px !important; padding-bottom: 0px !important;">
<div id="sis_inimage" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; position: relative; width: 680px; height: 100px;">
<div id="google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Doisong/Doisong.nha.detail_0__container__" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border: 0pt none;"><iframe frameborder="0" height="1" id="google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Doisong/Doisong.nha.detail_0" name="google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Doisong/Doisong.nha.detail_0" scrolling="no" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; border-width: 0px; border-style: initial; vertical-align: bottom;" title="3rd party ad content" width="1"></iframe></div>
</div>
</div>
</div>

<p>Ảnh minh họa:<em>&nbsp;Pexel</em></p>

<p><strong>Sử dụng đồ nội thất kh&ocirc;ng c&oacute; chủ đề thống nhất</strong></p>

<p>Mọi thiết kế đều cần đến sự nhất qu&aacute;n xuy&ecirc;n suốt. Nếu bạn kết hợp c&aacute;c yếu tố kh&aacute;c nhau trong c&ugrave;ng một kh&ocirc;ng gian, chẳng hạn như đồ nội thất truyền thống của Trung Quốc với m&agrave;n cửa phong c&aacute;ch ch&acirc;u &Acirc;u cổ điển th&igrave; kh&ocirc;ng gian ng&ocirc;i nh&agrave; c&oacute; thể trở n&ecirc;n lộn xộn, thậm ch&iacute; l&agrave; thảm họa decor. Theo c&aacute;c nh&agrave; thiết kế nội thất, kh&ocirc;ng gian cần được thống nhất bởi một chủ đề chung, chẳng hạn như m&agrave;u sắc hoặc thời đại.</p>

<p><strong>Qu&aacute; nhiều h&agrave;ng nh&aacute;i</strong></p>

<p>V&igrave; đồ nội thất đắt đỏ n&ecirc;n c&oacute; thể bạn nghĩ đến việc mua m&oacute;n đồ đ&oacute; &quot;nh&aacute;i&quot; tr&ecirc;n mạng hay đặt từ một xưởng thủ c&ocirc;ng n&agrave;o đ&oacute;. Tuy nhi&ecirc;n, mọi thứ n&ecirc;n c&oacute; giới hạn. Một hoặc hai m&oacute;n đồ c&oacute; thể kh&ocirc;ng g&acirc;y ch&uacute; &yacute; v&agrave; kh&ocirc;ng l&agrave;m hỏng kh&ocirc;ng gian tổng thể nhưng nếu to&agrave;n bộ l&agrave; h&agrave;ng nh&aacute;i, mọi người sẽ ch&uacute; &yacute;. Một khi h&agrave;ng giả bị ph&aacute;t hiện, kh&aacute;ch đến nh&agrave; c&oacute; xu hướng coi to&agrave;n bộ nội thất l&agrave; đồ rẻ tiền. Bạn cũng đừng qu&ecirc;n rằng &quot;tiền n&agrave;o, của ấy&quot;.</p>

<p><strong>Bộ r&egrave;m cửa chất lượng k&eacute;m</strong></p>

<p>R&egrave;m cửa/cửa sổ rất quan trọng trong kh&ocirc;ng gian nh&agrave;, v&igrave; thế, cần đảm bảo bạn kh&ocirc;ng chọn một bộ r&egrave;m cửa chất lượng qu&aacute; rẻ tiền. Khi bạn c&oacute; r&egrave;m cửa xấu, ch&uacute;ng c&oacute; thể l&agrave;m giảm gi&aacute; trị của bức tường, đồ nội thất cao cấp hoặc c&aacute;c đồ đắt tiền kh&aacute;c. Thật sai lầm khi cải tạo căn ph&ograve;ng cao cấp nhưng lại mua r&egrave;m cửa với gi&aacute; rẻ.</p>

<p><strong>D&aacute;n cửa sổ bằng đề can l&ograve;e loẹt</strong></p>

<p>V&igrave; nhiều l&yacute; do bạn c&oacute; thể d&aacute;n đề can cho cửa sổ. Tuy nhi&ecirc;n, những đề can n&agrave;y thường đi k&egrave;m với c&aacute;c thiết kế như hoa văn, m&agrave;u sắc l&ograve;e loẹt... Đặc biệt, nếu bạn chọn một nh&atilde;n hiệu qu&aacute; rẻ tiền, dễ phai m&agrave;u hoặc bong tr&oacute;c từng phần, n&oacute; sẽ khiến căn ph&ograve;ng tr&ocirc;ng xuống cấp hoặc rẻ tiền ngay lập tức. Điều n&agrave;y thể hiện r&otilde; nhất v&agrave;o buổi trưa, khi &aacute;nh s&aacute;ng mạnh xuy&ecirc;n qua cửa sổ, hầu như kh&ocirc;ng thể bỏ s&oacute;t bất kỳ vấn đề n&agrave;o.</p>

<p><strong>Qu&aacute; nhiều loại m&oacute;c treo</strong></p>

<p>Đặt c&aacute;c m&oacute;c treo tr&ecirc;n tường c&oacute; thể l&agrave;m giảm gi&aacute; trị h&igrave;nh ảnh của ph&ograve;ng tắm, nh&agrave; bếp hoặc ph&ograve;ng ngủ, chưa kể c&aacute;c vết ch&uacute;ng để lại tr&ecirc;n cửa v&agrave; tường như băng d&iacute;nh, lỗ khoan... Tốt nhất l&agrave; n&ecirc;n cạy ch&uacute;ng ra v&agrave; t&igrave;m kiếm một giải ph&aacute;p thay thế thẩm mỹ hơn.</p>

<p><strong>Đồ t&aacute;i chế</strong></p>

<p>Sẽ kh&aacute; th&uacute; vị khi sử dụng ly rượu cũ l&agrave;m b&igrave;nh hoa hoặc một chiếc ủng cũ l&agrave;m chậu treo , tuy nhi&ecirc;n, điều quan trọng l&agrave; bạn phải duy tr&igrave; sự nhất qu&aacute;n trong thiết kế. Quan trọng hơn, đồ t&aacute;i chế n&ecirc;n ph&ugrave; hợp với khung cảnh chung, nếu kh&ocirc;ng, bạn sẽ biến nh&agrave; th&agrave;nh một mớ lộn xộn.</p>

<p><strong>Tranh ảnh sản xuất h&agrave;ng loạt</strong></p>

<p>Những thiết kế được sản xuất h&agrave;ng loạt, v&iacute; dụ tranh in m&agrave; bạn thấy đầy rẫy trong c&aacute;c cửa h&agrave;ng đồ nội thất, được treo tại kh&aacute;ch sạn b&igrave;nh d&acirc;n, tiệm ăn... c&oacute; thể khiến kh&ocirc;ng gian nh&agrave; bạn giảm đ&aacute;ng kể gi&aacute; trị. Nếu bạn kh&ocirc;ng c&oacute; tiền, tốt nhất l&agrave; đừng chưng hoặc chọn ảnh tự chụp.</p>

<p>Một căn ph&ograve;ng với c&aacute;c bức tranh qu&aacute; phổ biến, thiếu c&aacute; t&iacute;nh... tạo ra cảm gi&aacute;c k&eacute;m sang trọng.</p>

<p><strong>Nội thất qu&aacute; khổ</strong></p>

<p>Những chiếc b&agrave;n qu&aacute; khổ hoặc ghế sofa to qu&aacute; mức c&oacute; thể từng tạo ấn tượng về quyền lực, sự gi&agrave;u c&oacute;. Tuy nhi&ecirc;n, ng&agrave;y nay, xu thế đ&atilde; đi ngược lại.</p>

<p>Đồ nội thất qu&aacute; khổ c&oacute; thể cho thấy bạn kh&ocirc;ng đo lường đ&uacute;ng k&iacute;ch thước kh&ocirc;ng gian hoặc mua bừa cho xong. Thật kh&ocirc;i h&agrave;i khi bạn phải l&aacute;ch sang một b&ecirc;n, chen ch&uacute;c giữa một chiếc ghế qu&aacute; khổ v&agrave; một chiếc b&agrave;n c&agrave; ph&ecirc; qu&aacute; lớn.</p>

<p>Nếu bạn muốn nh&agrave; bạn gọn mắt, h&atilde;y mua đồ nội thất tương xứng với diện t&iacute;ch nh&agrave; v&agrave; h&agrave;i h&ograve;a với kh&ocirc;ng gian.</p>

<p><strong>&Aacute;nh s&aacute;ng k&eacute;m, thiết bị chiếu s&aacute;ng kh&ocirc;ng ph&ugrave; hợp</strong></p>

<p>&Aacute;nh s&aacute;ng c&agrave;ng k&eacute;m th&igrave; căn ph&ograve;ng tr&ocirc;ng c&agrave;ng k&eacute;m sang v&agrave; c&agrave;ng xuống cấp. Cần nhớ rằng m&agrave;u sắc kh&ocirc;ng gian bị ảnh hưởng bởi độ s&aacute;ng của nguồn s&aacute;ng. Dưới &aacute;nh s&aacute;ng yếu, những bức tường trắng mới c&oacute; thể tr&ocirc;ng c&oacute; m&agrave;u v&agrave;ng, v&igrave; thế l&agrave;m hỏng hiệu ứng của một kh&ocirc;ng gian tối giản c&oacute; gam trắng chủ đạo.</p>

<p>Việc phối hợp c&aacute;c thiết bị chiếu s&aacute;ng cũng rất quan trọng, cho ph&eacute;p khởi tạo một kh&ocirc;ng gian cao cấp hơn.</p>

<p style="text-align:right"><strong>Th&ugrave;y Linh</strong>&nbsp;<em>(Theo Asianone)</em></p>
', N'10-sai-lam-decor-khien-nha-kem-sang', 0, 1, CAST(N'2023-05-11T00:00:00' AS SmallDateTime))
INSERT [dbo].[news] ([id], [name], [img], [description], [link], [detail], [meta], [hide], [order], [datebegin]) VALUES (13, N'Nhiều dự án được vinh danh tại giải thưởng thiết kế An Cường IDA', N'11-05-23-12-11-08-tt3.png', N'<span style="background-color:rgb(252, 250, 246); color:rgb(34, 34, 34); font-family:arial; font-size:18px">3 giải thưởng lớn được trao cho 3 dự &aacute;n của c&aacute;c sinh vi&ecirc;n trường Đại học B&aacute;ch khoa Đ&agrave; Nẵng, Đại học X&acirc;y dựng H&agrave; Nội v&agrave; Đại học Kiến tr&uacute;c TP HCM.</span>', NULL, N'<p>Chung kết cuộc thi An Cường Interior Design Award 2022 được C&ocirc;ng ty cổ phần Gỗ An Cường tổ chức tại TP HCM, với 10 b&agrave;i dự thi được chọn v&agrave;o v&ograve;ng cuối.</p>

<p>Tham dự Gala chung kết v&agrave; trao giải c&oacute; sự hiện diện của &ocirc;ng L&ecirc; Đức Nghĩa - Chủ tịch HĐQT C&ocirc;ng ty cổ phần Gỗ An Cường, &ocirc;ng Trần Kh&aacute;nh Trung - Chủ nhiệm CLB Kiến Tr&uacute;c Xanh TP HCM c&ugrave;ng c&aacute;c trưởng, ph&oacute; khoa kiến tr&uacute;c, nội thất, mỹ thuật c&ocirc;ng nghiệp c&aacute;c trường đại học tr&ecirc;n to&agrave;n quốc.</p>

<p>Giải thưởng An Cường IDA l&agrave; giải thưởng thường ni&ecirc;n của Gỗ An Cường ở nhiều lĩnh vực kh&aacute;c nhau như kiến tr&uacute;c, nội thất, s&aacute;ng tạo họa tiết tr&ecirc;n vật liệu mới..., nhằm mục đ&iacute;ch kết nối, ph&aacute;t triển v&agrave; vinh danh những kiến tr&uacute;c sư, nh&agrave; thiết kế nội thất trẻ t&agrave;i năng ở Việt Nam.</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 452.038px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Hội đồng chấm thi An Cường Interior Design Award 2022. Ảnh: Gỗ An Cường" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/12/09/Image-65135160-ExtractWord-1-O-7267-3226-1670575113.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=5tXrA2fqhDyEwCQ-rBOVFA" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Hội đồng chấm thi An Cường Interior Design Award 2022. Ảnh:<em>&nbsp;Gỗ An Cường</em></p>

<p>Đầu th&aacute;ng 7 năm nay, Gỗ An Cường đ&atilde; ph&aacute;t động cuộc thi IDA m&ugrave;a thứ hai. Cuộc thi đ&atilde; thu h&uacute;t sự quan t&acirc;m của h&agrave;ng ngh&igrave;n sinh vi&ecirc;n v&agrave; c&aacute;c nh&agrave; thiết kế nội thất trẻ tr&ecirc;n to&agrave;n quốc.</p>

<p>An Cường Interior Design Award 2022 c&oacute; tổng chi ph&iacute; tổ chức v&agrave; giải thưởng l&ecirc;n đến 2 tỷ đồng. Trong đ&oacute; Giải nhất được nhận 100 triệu đồng tiền mặt từ An Cường v&agrave; hơn 50 triệu đồng được quy đổi th&agrave;nh phiếu mua h&agrave;ng đến từ c&aacute;c đơn vị đồng t&agrave;i trợ như Malloca, AConcept, Imundex, Hettich, Schneider, &Aacute;i Linh, Vicostone, BCI Central...</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 453.325px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Giải cao nhất của cuộc thi năm nay thuộc về dự án Cung Diều  của nhóm sinh viên trường Đại học Bách khoa Đà Nẵng. Ảnh: Gỗ An Cường" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/12/09/Image-ExtractWord-2-Out-9422-1670575114.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=uKTOfNyaauH-ZZFUFLlrfg" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Giải cao nhất của cuộc thi năm nay thuộc về dự &aacute;n Cung Diều của nh&oacute;m sinh vi&ecirc;n trường Đại học B&aacute;ch khoa Đ&agrave; Nẵng. Ảnh:&nbsp;<em>Gỗ An Cường</em></p>

<p>Đại diện ban tổ chức cho biết, với lộ tr&igrave;nh v&agrave; th&ocirc;ng điệp r&otilde; r&agrave;ng, c&aacute;c t&aacute;c giả của IDA m&ugrave;a hai đ&atilde; lồng gh&eacute;p một c&aacute;ch tinh tế, mới mẻ c&aacute;c &yacute; tưởng thiết kế v&agrave; tr&igrave;nh b&agrave;y một c&aacute;ch thuyết phục trước hội đồng gi&aacute;m khảo.</p>

<p>Trải qua h&agrave;nh tr&igrave;nh hơn 5 th&aacute;ng, cuộc thi đ&atilde; t&igrave;m ra được những dự &aacute;n xuất sắc nhất v&agrave; nhận được sự đồng thuận từ giới chuy&ecirc;n m&ocirc;n trong ng&agrave;nh nội thất.</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 453.325px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Giải nhì thuộc về dự án Happiness Module của nhóm sinh viên Đại học Xây dựng Hà Nội." class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/12/09/Image-207962498-ExtractWord-3-8382-5261-1670575114.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=pfuMCoxd7PfmxaFuUSSU3g" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Giải nh&igrave; thuộc về dự &aacute;n Happiness Module của nh&oacute;m sinh vi&ecirc;n Đại học X&acirc;y dựng H&agrave; Nội.</p>

<p>&quot;Với mong muốn tạo n&ecirc;n một m&ugrave;a giải đầy t&iacute;nh cạnh tranh, ban tổ chức đ&atilde; tạo điều kiện để c&aacute;c th&iacute; sinh tr&ecirc;n to&agrave;n quốc nhận được hỗ trợ như nhau. H&ocirc;m nay, ch&uacute;ng t&ocirc;i h&agrave;i l&ograve;ng với kết quả thuyết phục của top 3 dự &aacute;n xuất sắc nhất An Cường IDA 2022&quot;, &ocirc;ng Ngụy Thanh Vĩ - Gi&aacute;m đốc Truyền th&ocirc;ng Tiếp thị ki&ecirc;m Trưởng ban tổ chức của cuộc thi cho biết.</p>

<p>Theo &ocirc;ng Vĩ, hiện c&aacute;c dự &aacute;n đoạt giải tại IDA m&ugrave;a một đ&atilde; được sử dụng tham khảo v&agrave; đưa v&agrave;o c&ocirc;ng tr&igrave;nh ứng dụng thực tế. Ở m&ugrave;a giải 2023, đại diện doanh nghiệp kỳ vọng mang đến những chủ đề mang t&iacute;nh đặc th&ugrave; hơn để t&igrave;m ra c&aacute;c t&aacute;c giả tiềm năng trong ng&agrave;nh thiết kế nội thất, từ đ&oacute; đem c&aacute;c dự &aacute;n n&agrave;y dự thi ra đấu trường quốc tế.</p>

<div class="action_thumb flexbox" style="margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; display: flex; position: absolute; top: 10px; right: 10px; background: rgb(23, 25, 26); height: 32px; border-radius: 3px; transform-origin: 0px 0px; opacity: 1; transform: scale(1, 1); z-index: 9;">&nbsp;</div>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 453.325px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Giải ba được trao cho nhóm sinh viên trường Đại học Kiến trúc TP HCM với dự án Nơi ta lớn." class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/12/09/Image-170609015-ExtractWord-4-5554-2462-1670575115.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=qklq7V_9gQvRfCW7yAe53w" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Giải ba được trao cho nh&oacute;m sinh vi&ecirc;n trường Đại học Kiến tr&uacute;c TP HCM với dự &aacute;n Nơi ta lớn.</p>

<p style="text-align:right"><strong>Ho&agrave;i Phong</strong></p>
', N'nhieu-du-an-duoc-vinh-danh-tai-giai-thuong-thiet-ke-an-cuong-ida', 0, 2, CAST(N'2023-05-11T00:00:00' AS SmallDateTime))
INSERT [dbo].[news] ([id], [name], [img], [description], [link], [detail], [meta], [hide], [order], [datebegin]) VALUES (14, N'Những thiết kế bếp dành riêng cho căn hộ', N'tt4.png', N'<span style="background-color:rgb(252, 250, 246); color:rgb(34, 34, 34); font-family:arial; font-size:18px">Thương hiệu Ixina German Kitchens tư vấn c&aacute;c &yacute; tưởng căn bếp ph&ugrave; hợp với thiết kế căn hộ chung cư, nhất l&agrave; những nơi c&oacute; diện t&iacute;ch nhỏ.</span>', NULL, N'<p>Kh&ocirc;ng gian bếp ở c&aacute;c căn hộ thường kh&aacute; nhỏ, để lại &iacute;t chỗ cho những vật dụng cần thiết như đồ trang tr&iacute;, hay thậm ch&iacute; cả khu vực lưu trữ thực phẩm, dụng cụ... Ixina mang đến một số giải ph&aacute;p để một căn bếp nhỏ c&oacute; tất cả c&aacute;c chức năng của một gian bếp lớn.</p>

<p><strong>Thiết kế bếp c&oacute; diện t&iacute;ch nhỏ</strong></p>

<p>Sắp xếp khoa học l&agrave; lựa chọn tốt gi&uacute;p tiết kiệm kh&ocirc;ng gian. Th&agrave;nh phần gian bếp ph&ugrave; hợp (hệ thống tủ lưu trữ &acirc;m tường, đảo bếp) khiến kh&ocirc;ng gian trở n&ecirc;n rộng r&atilde;i hơn. Việc chọn nội thất đa chức năng (b&agrave;n ăn, b&agrave;n l&agrave;m việc t&iacute;ch hợp kệ trưng b&agrave;y) gi&uacute;p tiết kiệm diện t&iacute;ch nhưng căn bếp vẫn đủ c&ocirc;ng năng cần c&oacute;. Ngo&agrave;i ra, tiết chế d&ugrave;ng phụ kiện (vật dụng trang tr&iacute;, giỏ c&acirc;y, đ&egrave;n thả...) l&agrave;m tổng thể căn bếp trở n&ecirc;n hiện đại v&agrave; trẻ trung.</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 408.962px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Mẫu bếp Velvet Ultra Matt Mineral Green rộng 25 m2 được Ixina thiết kế. Ảnh: Ixina" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/11/22/Image-ExtractWord-1-Out-5696-1669109952.png?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=FaUqbw343icrG25srWJBEQ" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Mẫu bếp Velvet Ultra Matt Mineral Green rộng 25 m2 được Ixina thiết kế. Ảnh:&nbsp;<em>Ixina</em></p>

<p>B&iacute; quyết khi thiết kế một căn bếp nhỏ l&agrave; khả năng t&iacute;ch hợp. Với bất cứ k&iacute;ch thước hay kiểu d&aacute;ng gian bếp n&agrave;o, mẹo nhỏ l&agrave; tạo ra ảo gi&aacute;c về kh&ocirc;ng gian th&ocirc;ng tho&aacute;ng hơn nhờ c&aacute;ch bố tr&iacute; v&agrave; c&aacute;c giải ph&aacute;p lưu trữ th&ocirc;ng minh.</p>

<p>Như trong mẫu Velvet Ultra Matt của Ixina, hệ thống tủ lưu trữ được đặt &acirc;m tường gi&uacute;p kh&ocirc;ng gian kh&ocirc;ng bị chia cắt, tạo ra một mặt phẳng đồng nhất cho g&oacute;c nh&igrave;n rộng hơn. Việc để lại một khoảng trống giữa hệ tủ v&agrave; trần nh&agrave; cũng sẽ tạo ra cảm gi&aacute;c về một kh&ocirc;ng gian rộng mở cho căn bếp.</p>

<p>L&agrave; mẫu bếp d&agrave;nh cho căn hộ nhưng Velvet Ultra Matt được Ixina định hướng thiết kế tinh giản, sử dụng vật liệu chống b&aacute;m v&acirc;n tay hiện đại. Loại chất liệu cửa chống b&aacute;m v&acirc;n tay m&agrave;u Mineral Green khiến những c&aacute;i chạm kh&ocirc;ng để lại dấu tay. C&aacute;c phần l&otilde;m sử dụng chi tiết v&agrave;ng kim đem đến kh&ocirc;ng gian sang trọng.</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 710.438px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Các chi tiết được thiết kế với chất liệu chống bám vân tay. Ảnh: Ixina" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/11/30/thumbnail-IMG-0356-3874-1669799548.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=tS89fxdj65CAYd8F3SkrmA" style="border:0px; box-sizing:border-box; font-size:0px; left:56.5px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:557px" /></div>

<p>C&aacute;c chi tiết được thiết kế với chất liệu chống b&aacute;m v&acirc;n tay. Ảnh:&nbsp;<em>Ixina</em></p>

<p><strong>Thiết kế bếp trở th&agrave;nh t&acirc;m điểm căn hộ</strong></p>

<p>Căn hộ chung cư c&oacute; lợi thế tất cả c&aacute;c khu vực chức năng (ph&ograve;ng kh&aacute;ch, nh&agrave; bếp, nh&agrave; tắm...) đều nằm trong c&ugrave;ng một kh&ocirc;ng gian. Đ&acirc;y l&agrave; điều kiện để biến căn bếp trở th&agrave;nh t&acirc;m điểm của căn hộ. Mẫu Vogue Black Matt c&oacute; m&agrave;u sắc tương phản giữa c&aacute;c bức tường v&agrave; hệ thống tủ kệ, kết hợp với c&aacute;ch trưng b&agrave;y, trang tr&iacute; trẻ trung sẽ thu h&uacute;t sự ch&uacute; &yacute; của ng&ocirc;i nh&agrave;.</p>

<p>Để nh&agrave; bếp th&agrave;nh t&acirc;m điểm của căn hộ, h&atilde;y c&acirc;n nhắc khả năng sử dụng kệ mở tạo điểm nhấn cho hệ tủ bếp. Kệ mở được sử dụng để trưng b&agrave;y những m&oacute;n đồ hấp dẫn nhất trong nh&agrave; bếp, chẳng hạn như đồ s&agrave;nh sứ xinh xắn, hoa quả nhiều m&agrave;u sắc, c&aacute;c lọ thủy tinh đựng gia vị, tr&agrave;, c&agrave; ph&ecirc;, đồng thời mang lại cảm gi&aacute;c rộng r&atilde;i v&agrave; th&ocirc;ng tho&aacute;ng hơn cho căn bếp.</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 371.575px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Mẫu Vogue Black Matt có màu sắc tương phản. Ảnh: Ixina" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/11/30/img-0357-jpeg-1669799417-7194-1669799548.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=PDCckOWH4RvyNpXqEHLJkQ" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Mẫu Vogue Black Matt c&oacute; m&agrave;u sắc tương phản. Ảnh:&nbsp;<em>Ixina</em></p>

<p>Hệ ray treo t&iacute;ch hợp &aacute;nh s&aacute;ng Sign Emotion d&ugrave;ng cho mẫu Vogue Black Matt c&ograve;n cung cấp nhiều loại phụ kiện kh&aacute;c cho ph&ograve;ng tắm v&agrave; ph&ograve;ng kh&aacute;ch.</p>

<p><strong>Thiết kế bếp với kh&ocirc;ng gian mở</strong></p>

<p>Kh&ocirc;ng gian bếp mở gi&uacute;p kết nối ph&ograve;ng kh&aacute;ch v&agrave; c&aacute;c khu vực kh&aacute;c trong căn hộ, tận dụng tốt hơn kh&ocirc;ng gian, đồng thời mang đến vẻ đẹp h&agrave;i h&ograve;a. Một kh&ocirc;ng gian mở li&ecirc;n ho&agrave;n giữa ph&ograve;ng kh&aacute;ch v&agrave; nh&agrave; bếp gi&uacute;p giải ph&oacute;ng tầm nh&igrave;n, tạo ra một diện t&iacute;ch rộng hơn.</p>

<p>Một lưu &yacute; đến từ c&aacute;c chuy&ecirc;n gia của Ixina l&agrave; kh&ocirc;ng n&ecirc;n lựa chọn c&aacute;c t&ocirc;ng m&agrave;u tối cho khu vực bếp mở. M&agrave;u tối sẽ l&agrave;m cho căn bếp c&oacute; cảm gi&aacute;c nhỏ. Như mẫu bếp Velvet Fjord Blue Ultra Matt của Ixina c&oacute; diện t&iacute;ch 15m2 nhưng m&agrave;u xanh v&agrave; trắng l&agrave;m s&aacute;ng căn ph&ograve;ng, khiến căn ph&ograve;ng trải rộng hơn.</p>

<div class="fig-picture" style="margin: 0px; padding: 0px 0px 428.825px; box-sizing: border-box; text-rendering: optimizelegibility; width: 680px; float: left; display: table; justify-content: center; background: rgb(240, 238, 234); position: relative;"><img alt="Mẫu thiết kế bếp Velvet Fjord Blue Ultra Matt. Ảnh: Ixina" class="lazied lazy" src="https://i1-giadinh.vnecdn.net/2022/11/30/thumbnail-img-0358-1669799472-3549-1669799548.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=xtMu0BtElidwsk7j1D2qkw" style="border:0px; box-sizing:border-box; font-size:0px; left:0px; line-height:0; margin:0px; max-height:700px; max-width:100%; padding:0px; position:absolute; text-rendering:optimizelegibility; top:0px; width:680px" /></div>

<p>Mẫu thiết kế bếp Velvet Fjord Blue Ultra Matt. Ảnh:&nbsp;<em>Ixina</em></p>

<p>Trong mẫu thiết kế n&agrave;y, c&aacute;c chuy&ecirc;n gia Ixina đ&atilde; tận dụng tối đa &aacute;nh s&aacute;ng từ cửa sổ v&agrave; cửa ch&iacute;nh ra ban c&ocirc;ng để gi&uacute;p căn bếp c&oacute; cảm gi&aacute;c rộng r&atilde;i nhất.</p>

<p style="text-align:right"><strong>Y&ecirc;n Chi</strong></p>
', N'nhung-thiet-ke-bep-danh-rieng-cho-can-ho', 0, 3, CAST(N'2023-05-11T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[news] OFF
GO
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([id], [code], [customname], [phone], [address], [total], [description], [typepayment], [datebegin]) VALUES (20, N'DH7633', N'thong', N'0938026084', N'fdsafa', 44900000, N'1234', 2, CAST(N'2023-05-12T16:24:00' AS SmallDateTime))
INSERT [dbo].[order] ([id], [code], [customname], [phone], [address], [total], [description], [typepayment], [datebegin]) VALUES (21, N'DH2313', N'dang', N'0938026084', N'fdsafa', 44900000, N'123', 2, CAST(N'2023-05-12T16:37:00' AS SmallDateTime))
INSERT [dbo].[order] ([id], [code], [customname], [phone], [address], [total], [description], [typepayment], [datebegin]) VALUES (22, N'DH0123', N'dangthong', N'0938026084', N'fdsafa', 44900000, N'test', 1, CAST(N'2023-05-12T16:37:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[order] OFF
GO
SET IDENTITY_INSERT [dbo].[orderdetail] ON 

INSERT [dbo].[orderdetail] ([id], [orderid], [productid], [price], [quantity]) VALUES (17, 20, 27, 44900000, 1)
INSERT [dbo].[orderdetail] ([id], [orderid], [productid], [price], [quantity]) VALUES (18, 21, 27, 44900000, 1)
INSERT [dbo].[orderdetail] ([id], [orderid], [productid], [price], [quantity]) VALUES (19, 22, 27, 44900000, 1)
SET IDENTITY_INSERT [dbo].[orderdetail] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (27, N'MIALCA BÀN ĂN', 44900000, N'MI_BA_01.jpg', N'<p>Được chạm khắc tinh tế từ gỗ sồi nguy&ecirc;n khối, b&agrave;n ăn Mialca ph&aacute; vỡ ranh giới giữa t&aacute;c phẩm nghệ thuật hiện đại v&agrave; thuần phong nội thất.</p>

<p><br />
Đi v&agrave;o chi tiết, mặt b&agrave;n được l&agrave;m ho&agrave;n to&agrave;n từ gỗ sồi nguy&ecirc;n khối với c&aacute;c v&aacute;t cạnh được bo tr&ograve;n thủ c&ocirc;ng từ những người thợ l&agrave;nh nghề nhất. Ch&acirc;n b&agrave;n được đẽo tỉ mỉ v&agrave; cẩn trọng với chi tiết h&igrave;nh vỏ s&ograve; uốn lượn đồng đều v&agrave; đặc biệt kh&ocirc;ng c&oacute; mối nối giữa c&aacute;c chi tiết do được đẽo từ một khối gỗ đồng nhất. Trong sản xuất nội thất, bất kể sử dụng kỹ thuật sản xuất n&agrave;o, gỗ sẽ tiếp tục co lại hoặc nở ra theo thời gian. Chuyển động n&agrave;y trong gỗ c&oacute; thể l&agrave;m xuất hiện c&aacute;c vết nứt, đ&acirc;y l&agrave; điều b&igrave;nh thường đối với bất kỳ sản phẩm gỗ tự nhi&ecirc;n n&agrave;o. V&igrave; thế, dưới bạn b&agrave;n được gia cố th&ecirc;m một tấm đinh th&eacute;p tinh luyện để hạn chế xuất hiện c&aacute;c vết nứt. Đại diện cho sự kết hợp nhịp nh&agrave;ng giữa thi&ecirc;n nhi&ecirc;n v&agrave; sự kh&eacute;o l&eacute;o của con người, b&agrave;n Mialca sẽ l&agrave; một trong những t&aacute;c phẩm đi&ecirc;u khắc ấn tượng nhất trong bất k&igrave; kh&ocirc;ng gian n&agrave;o.</p>
', N'mialca-ban-an', N'W100 x L220 x H75cm (Bàn 8 chỗ ngồi)', N'Natural', 0, 0, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (28, N'DILETTA BÀN GẤP', 7900000, N'DI_BA_01.jpg', N'<p>Được chạm khắc tinh tế từ gỗ sồi nguy&ecirc;n khối, b&agrave;n ăn Mialca ph&aacute; vỡ ranh giới giữa t&aacute;c phẩm nghệ thuật hiện đại v&agrave; thuần phong nội thất.</p>

<p><br />
Đi v&agrave;o chi tiết, mặt b&agrave;n được l&agrave;m ho&agrave;n to&agrave;n từ gỗ sồi nguy&ecirc;n khối với c&aacute;c v&aacute;t cạnh được bo tr&ograve;n thủ c&ocirc;ng từ những người thợ l&agrave;nh nghề nhất. Ch&acirc;n b&agrave;n được đẽo tỉ mỉ v&agrave; cẩn trọng với chi tiết h&igrave;nh vỏ s&ograve; uốn lượn đồng đều v&agrave; đặc biệt kh&ocirc;ng c&oacute; mối nối giữa c&aacute;c chi tiết do được đẽo từ một khối gỗ đồng nhất. Trong sản xuất nội thất, bất kể sử dụng kỹ thuật sản xuất n&agrave;o, gỗ sẽ tiếp tục co lại hoặc nở ra theo thời gian. Chuyển động n&agrave;y trong gỗ c&oacute; thể l&agrave;m xuất hiện c&aacute;c vết nứt, đ&acirc;y l&agrave; điều b&igrave;nh thường đối với bất kỳ sản phẩm gỗ tự nhi&ecirc;n n&agrave;o. V&igrave; thế, dưới bạn b&agrave;n được gia cố th&ecirc;m một tấm đinh th&eacute;p tinh luyện để hạn chế xuất hiện c&aacute;c vết nứt. Đại diện cho sự kết hợp nhịp nh&agrave;ng giữa thi&ecirc;n nhi&ecirc;n v&agrave; sự kh&eacute;o l&eacute;o của con người, b&agrave;n Mialca sẽ l&agrave; một trong những t&aacute;c phẩm đi&ecirc;u khắc ấn tượng nhất trong bất k&igrave; kh&ocirc;ng gian n&agrave;o.</p>
', N'diletta-ban-gap', N'W140 x D40-80 x H73cm - 30kg', N'Raw oak', 0, 1, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (29, N'KIVA BÀN ĂN TRÒN', 29000000, N'KI_BA_04.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Được l&agrave;m bằng đế gỗ chắc chắn v&agrave; mặt tr&ecirc;n bằng k&iacute;nh cường lực, B&agrave;n ăn Kiva kết hợp t&aacute;c động ch&iacute;nh của thiết kế với cảm gi&aacute;c nhẹ nh&agrave;ng v&agrave; tho&aacute;ng m&aacute;t. Ch&acirc;n đi&ecirc;u khắc tạo th&ecirc;m hứng th&uacute; thị gi&aacute;c xứng đ&aacute;ng cho bảo t&agrave;ng - m&agrave; kh&ocirc;ng phải trả ph&iacute; v&agrave;o cửa.</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Made of solid wood base and a tempered glass top, the Kiva Dining Table combines major design impact with a light and airy feel. Sculptural legs add museum-worthy visual interest &mdash; without the cost of admission.</span>', N'kiva-ban-an-tron', N'D120 x H75 cm - 38kg', N'Gỗ sồi tự nhiên (Raw oak)', 0, 2, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (30, N'KAURO GHẾ ĂN', 4900000, N'KA_GA_01.jpeg', N'<span style="color:rgb(119, 119, 119); font-family:arial,helvetica,sans-serif">Chất liệu: Poplar, plywood, rattan &amp; Polyester</span><br />
<span style="color:rgb(119, 119, 119); font-family:arial,helvetica,sans-serif">Độ cao nơi ngồi: 49cm</span>', N'kauro-ghe-an', N'W47 x D50 x H81 cm - 4,5kg', N'Black & natural', 0, 0, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (31, N'CADZIO BÀN ĂN', 17900000, N'CA_BA_01.jpg', N'<p>Được chạm khắc tinh tế từ gỗ sồi nguy&ecirc;n khối, b&agrave;n ăn Mialca ph&aacute; vỡ ranh giới giữa t&aacute;c phẩm nghệ thuật hiện đại v&agrave; thuần phong nội thất.</p>

<p><br />
Đi v&agrave;o chi tiết, mặt b&agrave;n được l&agrave;m ho&agrave;n to&agrave;n từ gỗ sồi nguy&ecirc;n khối với c&aacute;c v&aacute;t cạnh được bo tr&ograve;n thủ c&ocirc;ng từ những người thợ l&agrave;nh nghề nhất. Ch&acirc;n b&agrave;n được đẽo tỉ mỉ v&agrave; cẩn trọng với chi tiết h&igrave;nh vỏ s&ograve; uốn lượn đồng đều v&agrave; đặc biệt kh&ocirc;ng c&oacute; mối nối giữa c&aacute;c chi tiết do được đẽo từ một khối gỗ đồng nhất. Trong sản xuất nội thất, bất kể sử dụng kỹ thuật sản xuất n&agrave;o, gỗ sẽ tiếp tục co lại hoặc nở ra theo thời gian. Chuyển động n&agrave;y trong gỗ c&oacute; thể l&agrave;m xuất hiện c&aacute;c vết nứt, đ&acirc;y l&agrave; điều b&igrave;nh thường đối với bất kỳ sản phẩm gỗ tự nhi&ecirc;n n&agrave;o. V&igrave; thế, dưới bạn b&agrave;n được gia cố th&ecirc;m một tấm đinh th&eacute;p tinh luyện để hạn chế xuất hiện c&aacute;c vết nứt. Đại diện cho sự kết hợp nhịp nh&agrave;ng giữa thi&ecirc;n nhi&ecirc;n v&agrave; sự kh&eacute;o l&eacute;o của con người, b&agrave;n Mialca sẽ l&agrave; một trong những t&aacute;c phẩm đi&ecirc;u khắc ấn tượng nhất trong bất k&igrave; kh&ocirc;ng gian n&agrave;o.</p>
', N'cadzio-ban-an', N'Sanded oak', N'W160 x D74 x H75cm', 0, 3, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 9)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (32, N'BOLDA GHẾ ĂN', 4900000, N'BO_BA_01.jpg', N'<span style="color:rgb(119, 119, 119); font-family:arial,helvetica,sans-serif">Chất liệu: Poplar, plywood, rattan &amp; Polyester</span><br />
<span style="color:rgb(119, 119, 119); font-family:arial,helvetica,sans-serif">Độ cao nơi ngồi: 49cm</span>', N'bolda-ghe-an', N'W47 x D50 x H81 cm - 4,5kg', N'Black & natural', 0, 1, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (33, N'CELESTE GHẾ ĂN', 3200000, N'CE_GA_01.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Chất liệu: Kim loại &amp; Polyester</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Độ cao nơi ngồi: 45.5cm</span>', N'celeste-ghe-an', N'W53 x D60 x H80 cm - 6.1kg', N'Xám tối', 0, 2, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (34, N'KALIV GHẾ ĂN', 6900000, N'KAL_GA_02.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Chất liệu: Plywood, PU Foam, Polyester</span>', N'kaliv-ghe-an', N'W81 x D58 x H57cm – Độ cao nơi ngồi 49cm – 8.36kg', N'Be, Đen', 0, 3, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 10)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (35, N'DALES GIƯỜNG', 19000000, N'DA_GI_01.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Chất liệu: Gỗ sồi tự nhi&ecirc;n nguy&ecirc;n khối, MDF Veneer sồi</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Giường QUEEN ti&ecirc;u chuẩn Hoa Kỳ - kh&ocirc;ng bao gồm nệm</span>', N'dales-giuong', N'W163  x D210  x H96.5cm – 58.5kg', N'Gỗ tự nhiên', 0, 0, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 11)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (36, N'BERKSHIRE GIƯỜNG', 24900000, N'BE_GI_01.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Chất liệu: Gỗ sồi tự nhi&ecirc;n nguy&ecirc;n khối, MDF Veneer sồi</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Giường QUEEN ti&ecirc;u chuẩn Hoa Kỳ - kh&ocirc;ng bao gồm nệm</span>', N'berkshire-giuong', N'W193 x D230 x H93cm', N'Raw oak', 0, 1, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 11)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (37, N'CANE 404 BÀN PHỤ', 3900000, N'CA_BP_01.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Chất liệu: gỗ sồi, MDF Veneer sồi, m&acirc;y</span>', N'cane-404-ban-phu', N'W40 x D34 x H53 cm - 9kg', N'Sồi tự nhiên & Nâu sáng', 0, 0, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (38, N'ZOULA - BÀN PHỤ', 3900000, N'ZO_BP_01.jpg', N'<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm</span><br />
<span style="color:rgb(102, 102, 102); font-family:roboto; font-size:16px">Chất liệu: Gỗ sồi nguy&ecirc;n khối, MDF, Veneer sồi cao cấp</span>', N'zoula---ban-phu', N'W35 x D35 x H72 cm - 10kg', N'màu gỗ sồi tự nhiên', 0, 1, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (39, N'SHIBA BÀN PHỤ', 4900000, N'SH_BP_03.jpg', N'<p>Th&ocirc;ng tin sản phẩm:<br />
Material: Manog wood</p>
', N'shiba-ban-phu', N'D49 x H49 cm', N'Natural & white', 0, 4, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (40, N'QIBLA BÀN PHỤ', 2900000, N'QI_BP_03.jpg', N'Th&ocirc;ng tin sản phẩm:<br />
Chất liệu Carved MDF', N'qibla-ban-phu', N'W40 x D40 x H51 cm', N'Be', 0, 3, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (42, N'BUREAU 180', 39900000, N'BU_SO_02.jpg', N'<div class="ct-text-block" id="text_block-30-14638" style="box-sizing: inherit; color: rgb(42, 56, 72); font-family: Roboto; font-size: 16px;"><span style="color:rgb(42, 56, 72); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm:</span><br />
Khung thiết kế<br />
Gỗ th&ocirc;ng New Zealand nguy&ecirc;n khối<br />
Căng đệm seat belt kh&ocirc;ng co v&agrave; ức chế tia cực t&iacute;m</div>

<div class="ct-text-block" id="text_block-32-14638" style="box-sizing: inherit; color: rgb(42, 56, 72); font-family: Roboto; font-size: 16px;"><br />
B&ocirc;ng nhồi<br />
Bọt Polyurethane mật độ cao đ&agrave;n hồi cao cấp<br />
L&ocirc;ng vịt v&agrave; sợi tổng hợp</div>
', N'bureau-180', N'182cm x Rộng 90cm x Cao 73cm', N'Nâu', 0, 0, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 13)
INSERT [dbo].[product] ([id], [name], [price], [img], [description], [meta], [size], [color], [hide], [order], [datebegin], [categoryid]) VALUES (43, N'ISLAND 190', 32900000, N'IS_SOFA_02.jpg', N'<div class="ct-text-block" id="text_block-22-14636" style="box-sizing: inherit; color: rgb(42, 56, 72); font-family: Roboto; font-size: 16px;"><span style="color:rgb(42, 56, 72); font-family:roboto; font-size:16px">Th&ocirc;ng tin sản phẩm:</span><br />
Khung thiết kế<br />
Gỗ th&ocirc;ng New Zealand nguy&ecirc;n khối<br />
Căng đệm seat belt kh&ocirc;ng co v&agrave; ức chế tia cực t&iacute;m<br />
L&ograve; xo th&eacute;p Nozag</div>

<div class="ct-text-block" id="text_block-24-14636" style="box-sizing: inherit; color: rgb(42, 56, 72); font-family: Roboto; font-size: 16px;"><br />
B&ocirc;ng nhồi<br />
Bọt Polyurethane mật độ cao đ&agrave;n hồi cao cấp<br />
L&ocirc;ng vũ v&agrave; b&aacute;nh b&ocirc;ng g&ograve;n sợi</div>

<div class="ct-text-block" id="text_block-26-14636" style="box-sizing: inherit; color: rgb(42, 56, 72); font-family: Roboto; font-size: 16px;"><br />
Chất liệu bọc<br />
C&oacute; thể th&aacute;o rời</div>
', N'island-190', N'90cm x Rộng 100cm x Cao 88cm', N'Be', 0, 1, CAST(N'2023-05-11T00:00:00' AS SmallDateTime), 13)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [image], [status], [admin], [datebegin]) VALUES (1, N'admin', N'PY2W7IqpQDo=', N'Thông Nguyễn', NULL, NULL, N'12-05-23-03-53-34-LinkedIn.png', 1, 0, CAST(N'2023-05-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [image], [status], [admin], [datebegin]) VALUES (2, N'dang', N'PY2W7IqpQDo=', N'Đăng Nguyễn', NULL, NULL, N'Bug.png', 1, 1, NULL)
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [image], [status], [admin], [datebegin]) VALUES (3, N'thong', N'PY2W7IqpQDo=', N'Nguyễn Thông', NULL, NULL, N'MinhDang.png', 1, 1, CAST(N'2023-05-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [image], [status], [admin], [datebegin]) VALUES (5, N'ThangDong', N'X/hQeogZmc4=', N'Thông Đăng', NULL, NULL, N'Twitter.png', 1, 0, CAST(N'2023-05-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[user] ([id], [username], [password], [fullname], [email], [phone], [image], [status], [admin], [datebegin]) VALUES (10, N'admin1', N'PY2W7IqpQDo=', N'Thông', NULL, NULL, N'MinhDang.png', 1, 0, CAST(N'2023-05-12T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[image_product]  WITH CHECK ADD  CONSTRAINT [FK_image_product_product] FOREIGN KEY([productid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[image_product] CHECK CONSTRAINT [FK_image_product_product]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_order] FOREIGN KEY([orderid])
REFERENCES [dbo].[order] ([id])
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_order]
GO
ALTER TABLE [dbo].[orderdetail]  WITH CHECK ADD  CONSTRAINT [FK_orderdetail_product] FOREIGN KEY([productid])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[orderdetail] CHECK CONSTRAINT [FK_orderdetail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([categoryid])
REFERENCES [dbo].[category] ([id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
USE [master]
GO
ALTER DATABASE [Shop] SET  READ_WRITE 
GO
