USE [DBOnlineMall]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Phone] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [Admin_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AdminRoles]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRoles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Role_id] [int] NOT NULL,
	[Admin_id] [int] NOT NULL,
 CONSTRAINT [AdminRoles_pk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Area]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[AreaName] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Area_pk] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [varchar](200) NOT NULL,
	[link] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[OrderBy] [int] NOT NULL,
	[Sratus] [bit] NULL DEFAULT ((1)),
	[page] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Banner_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blog](
	[BlogId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[BlogTime] [date] NULL DEFAULT (getdate()),
	[Category_blog_id] [int] NOT NULL,
	[Title] [varchar](100) NOT NULL,
	[Content] [text] NOT NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
	[Images] [varchar](max) NULL,
 CONSTRAINT [Blog_pk] PRIMARY KEY CLUSTERED 
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category_blog]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category_blog](
	[Cate_blog_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Category_blog_pk] PRIMARY KEY CLUSTERED 
(
	[Cate_blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category_Movie]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category_Movie](
	[Cate_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
 CONSTRAINT [Category_Movie_pk] PRIMARY KEY CLUSTERED 
(
	[Cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Config]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Config](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NULL,
	[value] [varchar](max) NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Config_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](100) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Customer_pk] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Events]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Events](
	[Event_id] [int] IDENTITY(1,1) NOT NULL,
	[Shop_ShoId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Title] [varchar](max) NOT NULL,
	[Descriptions] [text] NOT NULL,
	[Image] [varchar](max) NOT NULL,
	[Address] [varchar](100) NULL,
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[EndDate] [datetime] NULL,
	[StartDate] [datetime] NULL,
 CONSTRAINT [Events_pk] PRIMARY KEY CLUSTERED 
(
	[Event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[Phone] [varchar](20) NOT NULL,
	[Content] [varchar](max) NULL,
	[FBDate] [datetime] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [Feedback_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[gallery]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](max) NULL,
	[status] [bit] NULL DEFAULT ((1)),
	[createdDate] [datetime] NULL DEFAULT (getdate()),
	[Modifidate] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movie](
	[IdMovie] [int] IDENTITY(1,1) NOT NULL,
	[MoviveName] [varchar](max) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
	[Duration] [int] NOT NULL,
	[Actors] [nvarchar](max) NOT NULL,
	[AgeRestriction] [int] NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[Language] [varchar](20) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[Country] [varchar](100) NOT NULL,
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[banner] [varchar](max) NULL,
	[photos] [varchar](max) NULL,
 CONSTRAINT [Movie_pk] PRIMARY KEY CLUSTERED 
(
	[IdMovie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movie_type]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cate_movie_id] [int] NULL,
	[movie_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[Total] [float] NOT NULL,
	[Screening_Id] [int] NOT NULL,
	[OrderDate] [datetime] NULL DEFAULT (getdate()),
	[NumberOfSeats] [int] NOT NULL,
	[Status] [bit] NULL DEFAULT ((0)),
 CONSTRAINT [Order_pk] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[Role_id] [int] IDENTITY(1,1) NOT NULL,
	[Role_name] [varchar](255) NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Roles_pk] PRIMARY KEY CLUSTERED 
(
	[Role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Room]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Room](
	[IdRoom] [int] IDENTITY(1,1) NOT NULL,
	[RoomName] [varchar](100) NOT NULL,
	[TotalSeat] [int] NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Room_pk] PRIMARY KEY CLUSTERED 
(
	[IdRoom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sales](
	[Sale_id] [int] IDENTITY(1,1) NOT NULL,
	[Shop_ShoId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Sale] [int] NOT NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Sales_pk] PRIMARY KEY CLUSTERED 
(
	[Sale_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Screening]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screening](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Room_IdRoom] [int] NOT NULL,
	[Movie_Id] [int] NOT NULL,
	[ScreeningDate] [date] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Screening_pk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Screening_seat]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screening_seat](
	[ShowSeat_id] [int] IDENTITY(1,1) NOT NULL,
	[Seat_IdSeat] [int] NULL,
	[Screening_Id] [int] NOT NULL,
	[Order_OrderId] [int] NOT NULL,
	[Status] [bit] NULL DEFAULT ((0)),
	[Price] [float] NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Screening_seat_pk] PRIMARY KEY CLUSTERED 
(
	[ShowSeat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Seat]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Seat](
	[IdSeat] [int] IDENTITY(1,1) NOT NULL,
	[SeatName] [varchar](100) NOT NULL,
	[price] [float] NULL,
	[IdRoom] [int] NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Seat_pk] PRIMARY KEY CLUSTERED 
(
	[IdSeat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceName] [varchar](100) NOT NULL,
	[Service_area] [int] NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Service_pk] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shop](
	[ShoId] [int] IDENTITY(1,1) NOT NULL,
	[ShopName] [varchar](225) NOT NULL,
	[Photo] [varchar](200) NULL,
	[ServiceId] [int] NOT NULL,
	[Description] [varchar](500) NULL,
	[Address] [varchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Status] [bit] NULL DEFAULT ((1)),
	[Email] [varchar](200) NULL,
	[Url_web] [varchar](100) NULL,
	[Logo] [varchar](200) NULL,
	[slug] [varchar](100) NULL,
	[Meta_title] [varchar](max) NULL,
	[Meta_keyword] [varchar](max) NULL,
	[Meta_description] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [Shop_pk] PRIMARY KEY CLUSTERED 
(
	[ShoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shop_Product]    Script Date: 13/9/2021 3:01:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop_Product](
	[Pro_Id] [int] IDENTITY(1,1) NOT NULL,
	[Pro_name] [nvarchar](255) NOT NULL,
	[Images] [text] NOT NULL,
	[Shop_ShoId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[ModifiedDate] [datetime] NULL,
	[Status] [bit] NULL DEFAULT ((1)),
 CONSTRAINT [Shop_Product_pk] PRIMARY KEY CLUSTERED 
(
	[Pro_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([Id], [UserName], [DisplayName], [Password], [Phone], [Email]) VALUES (1, N'henry214', N'Henry', N'a0713003ab54e6b6d99439d670b8e7e1', N'0985234325', N'henry@gmail.com')
INSERT [dbo].[Admin] ([Id], [UserName], [DisplayName], [Password], [Phone], [Email]) VALUES (2, N'emma3', N'Emma', N'25d55ad283aa400af464c76d713c07ad', N'0839274823', N'emma@gmail.com')
INSERT [dbo].[Admin] ([Id], [UserName], [DisplayName], [Password], [Phone], [Email]) VALUES (3, N'david69', N'David', N'25d55ad283aa400af464c76d713c07ad', N'0489374235', N'david@gmail.com')
INSERT [dbo].[Admin] ([Id], [UserName], [DisplayName], [Password], [Phone], [Email]) VALUES (4, N'william88', N'William', N'25d55ad283aa400af464c76d713c07ad', N'0768456456', N'william@gmail.com')
SET IDENTITY_INSERT [dbo].[Admin] OFF
SET IDENTITY_INSERT [dbo].[AdminRoles] ON 

INSERT [dbo].[AdminRoles] ([id], [Role_id], [Admin_id]) VALUES (1, 1, 1)
INSERT [dbo].[AdminRoles] ([id], [Role_id], [Admin_id]) VALUES (2, 2, 1)
INSERT [dbo].[AdminRoles] ([id], [Role_id], [Admin_id]) VALUES (3, 3, 1)
INSERT [dbo].[AdminRoles] ([id], [Role_id], [Admin_id]) VALUES (4, 2, 2)
INSERT [dbo].[AdminRoles] ([id], [Role_id], [Admin_id]) VALUES (5, 2, 3)
INSERT [dbo].[AdminRoles] ([id], [Role_id], [Admin_id]) VALUES (6, 3, 4)
SET IDENTITY_INSERT [dbo].[AdminRoles] OFF
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([AreaId], [AreaName], [CreatedDate], [ModifiedDate]) VALUES (1, N'Food', CAST(N'2021-09-06 14:57:44.153' AS DateTime), CAST(N'2021-09-06 15:01:08.573' AS DateTime))
INSERT [dbo].[Area] ([AreaId], [AreaName], [CreatedDate], [ModifiedDate]) VALUES (2, N'Entertainment', CAST(N'2020-01-12 00:00:00.000' AS DateTime), CAST(N'2021-01-12 00:00:00.000' AS DateTime))
INSERT [dbo].[Area] ([AreaId], [AreaName], [CreatedDate], [ModifiedDate]) VALUES (3, N'Parking', CAST(N'2020-12-23 00:00:00.000' AS DateTime), CAST(N'2021-05-09 00:00:00.000' AS DateTime))
INSERT [dbo].[Area] ([AreaId], [AreaName], [CreatedDate], [ModifiedDate]) VALUES (9, N'Shops', CAST(N'2021-08-27 10:46:54.873' AS DateTime), CAST(N'2021-08-28 21:16:30.487' AS DateTime))
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (4, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Blog/BlogPost', N'Blog Post', 1, 1, N'Blog Post', CAST(N'2021-08-25 23:04:24.873' AS DateTime), CAST(N'2021-09-13 13:47:26.630' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (7, N'/Uploads/images/banner/background-02-1920-1080.jpg', N'Home/Index', N'Season Sale UP TO 70% OFF', 1, 1, N'Home', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-09 10:59:25.587' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (8, N'/Uploads/images/banner/background-05-1920-710.jpg', N'Home/Index', N'NEW COLLECTION ALWAYS in STYLE', 2, 1, N'Home', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-09 10:48:59.877' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (9, N'/Uploads/images/banner/background-08-1920-1025.jpg', N'Home/Index', N'Hats & Accessories 30% OFF EVERYTHING', 3, 1, N'Home', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-09 10:49:14.687' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (10, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Service/Entertainment', N'Entertainment', 1, 1, N'Entertainment', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:47:34.610' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (11, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Service/Shops', N'Shops', 1, 1, N'Shops', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:47:42.040' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (12, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Service/Food', N'Food', 1, 1, N'Food', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:47:46.043' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (13, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Service/Parking', N'Parking', 1, 1, N'Parking', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:48:51.477' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (14, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Events/Events', N'Events', 1, 1, N'Events', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:48:57.743' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (16, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Blog/Blog Classic', N'Blog Classic', 1, 1, N'Blog Classic', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:02.557' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (17, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Events/EventSingle', N'Event Page', 1, 1, N'Event Single', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:08.337' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (18, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Home/Contacts', N'Contacts', 1, 1, N'Contacts', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:15.123' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (19, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Home/Directions', N'Directions', 1, 1, N'Directions', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:18.920' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (20, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Home/GalleryMasonry', N'Gallery Masonry', 1, 1, N'Gallery Masonry', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:24.297' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (21, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Home/Sale', N'Sales', 1, 1, N'Sale', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:27.733' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (22, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Home/SearchResults', N'Search results', 1, 1, N'Search results', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:33.333' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (23, N'/Uploads/images/banner/banner04.jpg', N'Movie/MovieCheckout', N'Venus', 1, 1, N'Movie Checkout', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:37.547' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (24, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Service/ShopSingle', N'Shop Page', 1, 1, N'Shop Page', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-09 21:00:15.097' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (25, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Movie/MovieCheckout', N'Restaurant Single', 1, 1, N'Restaurant Single', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:41.460' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (26, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Movie/MovieList', N'Movies', 1, 1, N'Movie List', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:44.737' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (27, N'/Uploads/images/banner/banner04.jpg', N'Movie/MovieSeat', N'Venus', 1, 1, N'Movie Seat', CAST(N'2021-09-02 20:21:58.473' AS DateTime), CAST(N'2021-09-13 13:49:48.263' AS DateTime))
INSERT [dbo].[Banner] ([Id], [Image], [link], [description], [OrderBy], [Sratus], [page], [CreatedDate], [ModifiedDate]) VALUES (29, N'/Uploads/images/banner/background-01-1920-900.jpg', N'Home/SaleSingle', N'Sale Page', 1, 1, N'Sale Page', CAST(N'2021-09-12 09:14:56.350' AS DateTime), CAST(N'2021-09-12 09:14:56.350' AS DateTime))
SET IDENTITY_INSERT [dbo].[Banner] OFF
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (1, N'Regardless of what season it is now, there are always plenty of reasons to visit our mall. In this article, we decided to show you the list of Top 3 reasons to visit Fashion Day. to begin with, people usually visit shopping malls to enjoy variety while shopping, for socialization and for entertainment. People also visit malls because they offer one-stop shopping convenience and save them time.', CAST(N'2021-09-10' AS Date), 1006, N'Top 3 Reasons to Visit Fashion Day at Any Season', N'<p>Regardless of what season it is now, there are always plenty of reasons to visit our mall. In this article, we decided to show you the list of Top 3 reasons to visit Fashion Day. to begin with, people usually visit shopping malls to enjoy variety while shopping, for socialization and for entertainment. People also visit malls because they offer one-stop shopping convenience and save time.</p>
<p>However, Fashion Day has some additional attractions and reasons to visit it. For example, our mall&rsquo;s main claim to fame is its sheer size. An expansion will be opening soon, but for now, we already have a jaw-dropping number of 520 open stores. This means if you decided to spend just 10-minutes in each store, it would take you 86-hours to do it. That&rsquo;s three and a half days!</p>
<p>We also have about 100 events every year that feature celebrity appearances. A recent meet-and-greet with internet personality Tyler Oakley, held in conjunction with the release of his book &ldquo;Binge,&rdquo; drew a sell-out crowd.</p><p>The last but not least reason to visit us is the variety of cafes and restaurant we have. Our 50+ restaurants will be glad to offer you an amazingly tasty menu. Rest assured you won&rsquo;t go hungry at Fashion Day, that&rsquo;s for sure. And there is always more things to do at your favorite mall, so feel free to visit us at any season. We believe the time you spend here will become one of the best experiences in your life.</p>', 1, N'top-3-reasons-to-visit-fashion-day-at-any-season', N'Top 3 Reasons to Visit Fashion Day at Any Season', N'Top 3 Reasons to Visit Fashion Day at Any Season', N'Top 3 Reasons to Visit Fashion Day at Any Season', CAST(N'2021-09-10 14:10:11.300' AS DateTime), CAST(N'2021-09-10 14:10:11.300' AS DateTime), N'/Uploads/images/Blog/post-01-960x550.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (21, N'When life is all about home and family, and we love those little joys that fulfill our lives. MiniSo drives on this notion – to make everyday life convenient and entertaining. MiniSo offers everything that a family expects from a brand', CAST(N'2021-09-12' AS Date), 1006, N'New Brand Alert: MiniSo arrived at Pacific Mall', N'<p>When life is all about home and family, and we love those little joys that fulfill our lives. MiniSo drives on this notion &ndash; to make everyday life convenient and entertaining. MiniSo offers everything that a family expects from a brand&nbsp;&ndash; high quality, affordable, and a better shopping experience.</p>

<p>Broadly, the products of Miniso are divided into the following categories &ndash; household items, daily life products, digital and electronics, fashion accessories, health and beauty,&nbsp;<strong><a href="https://www.pacificmalls.in/tagore-garden/bags-and-accessories.php">bags and accessories</a></strong>, seasonal products, stationery, textiles, and toys.</p>

<p>Their several products are crowned with iF Design Award. Founded in 1953, iF Design Award is based on the concept of independence, rigor, and reliability. Moreover, Red Dot Design has also come forward to celebrate MiniSO for its innovative and breakthrough design.</p>

<p>Apparently,&nbsp;<strong><a href="https://www.pacificmalls.in/tagore-garden/miniso-toys-and-kitchenware">MiniSo&nbsp;</a></strong>products are world-renowned for their style and quality. Now, when it comes to affordability, the brand feels proud of its reasonable price.</p>

<p>It&rsquo;s no wonder, MiniSo has come up with a new slogan in 2020 &ndash; &ldquo;Life is so fun, MiniSo.&rdquo; Additionally, in collaboration with several prominent brands including Coca Cola, Marvel, Mickey and Minnie, and so on to make their products even more appealing. Make your visit and explore the varieties of best-selling products by MiniSo.</p>
', 1, N'new-brand-alert-miniso-arrived-at-pacific-mall', N'New Brand Alert: MiniSo arrived at Pacific Mall', N'New Brand Alert: MiniSo arrived at Pacific Mall', N'New Brand Alert: MiniSo arrived at Pacific Mall', CAST(N'2021-09-12 15:34:50.937' AS DateTime), CAST(N'2021-09-12 21:05:00.693' AS DateTime), N'/Uploads/images/Blog/Miniso-Blog-Image-1024x536.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (22, N'If you are a cinema lover like us, then, there is good news for you. PVR in Pacific Mall, Tagore Garden, Dwarka Sector 21, and Dehradun have opened its door for unlimited fun. With the government recommendation and our strict safety measures', CAST(N'2021-09-13' AS Date), 1008, N'PVR Is Now Open | Customer Safety Measure Update', N'<p>If you are a cinema lover like us, then, there is good news for you. PVR in&nbsp;<strong><a href="https://www.pacificmalls.in/" rel="noreferrer noopener" target="_blank">Pacific Mall</a></strong>, Tagore Garden, Dwarka Sector 21, and Dehradun have opened its door for unlimited fun. With the government recommendation and our strict safety measures,&nbsp;we have successfully brought you the fun of cinema exactly the way it was.</p>

<p>Due to the pandemic, the option for an authentic cinema experience had stepped into the dark, and for the time being, we had to withdraw all these services. Now that we are back and the same cinema experience is back on the table &ndash; you can enjoy many latest blockbusters in optimal comfort.</p>

<p>In all our places: Sector 21 Dwarka, Dehradun, and Tagore Garden, PVR has resumed its services. In Sector 21, Dwarka, we have the classiest and affordable cinema hall, which is the first of its kind in Delhi. Likewise,&nbsp;<a href="https://www.pacificmalls.in/tagore-garden/pvr-cinema-hall.php">PVR in Tagore Garden</a>, Delhi, and Dehradun both are back with the same splendor to make your eve entertaining.</p>

<p>As we have mentioned earlier, we are strict with every safety measures to keep you safe. Each of one these cinema halls follows guidelines and facilities to ensure confidence among the visitors.</p>

<p>Mandatory masks, temperature check, social distancing, proper hand hygiene, and frequent cleaning and disinfection of all auditorium, concession areas, and restroom &ndash; we are following every minute details for your safety.&nbsp;</p>
', 1, N'pvr-is-now-open-customer-safety-measure-update', N'PVR Is Now Open | Customer Safety Measure Update', N'PVR Is Now Open | Customer Safety Measure Update', N'PVR Is Now Open | Customer Safety Measure Update', CAST(N'2021-09-12 15:38:46.157' AS DateTime), CAST(N'2021-09-12 21:05:24.073' AS DateTime), N'/Uploads/images/Blog/pvr-1-1024x536.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (23, N'This could be one of the leading moves by any shopping center in Dwarka and nearby. Just a few months back, when… Dwarka was in serious need of a cinema hall. Pacific D21 Mall Dwarka brought the finest one to its door.', CAST(N'2021-09-08' AS Date), 1008, N'PVR Sapphire Now in Pacific D21 Mall Dwarka', N'<p>This could be one of the leading moves by any shopping center in Dwarka and nearby. Just a few months back, when&hellip;&nbsp;Dwarka was in serious need of a cinema hall.&nbsp;<a href="http://pacificmalls.in/dwarka/">Pacific D21 Mall Dwarka</a>&nbsp;brought the finest one to its door.</p>

<p>PVR Sapphire is one of the classiest and affordable cinema halls that you cannot find any other places in Delhi and especially in Dwarka. It is the first initiation by the PVR groups to launch Sapphire, an elegant cinema hall.</p>

<p>A perfect eve cannot complete with just a cinema hall. You also need a great place to eat and shop. This is one of the most preferred time passes for Delhi locals. When you are opting in for PVR Sapphire, you will have a plethora of options for cuisines and shopping.</p>

<p>This is the major reason that locals in Dwarka are pretty excited about it. They are visiting Pacific D21 Mall for more than 5 months, and every time people ask for a cinema hall nearby. Now, when they have one of the finest&nbsp;<a href="http://pacificmalls.in/dwarka/pvr.php">Cinema Hall in Dwarka</a>&nbsp;under the same roof, they marked as the shopping center &ndash; the complete hangout spot.</p>

<p>As mentioned earlier, PVR Sapphire is not an expensive option. It the best you can find in the affordable price range. Now, lose yourself in blockbusters, enjoy a comfortable and entertaining movie experience with your friends and family.</p>

<p>A cinema hall should be a place where you lose yourself in comfort and amusements. It is the movie therapy that can inspire, entertain and laugh you. We recommend you visit PVR Sapphire at least once so that you never miss the authentic cinema experience. &nbsp;</p>
', 1, N'pvr-sapphire-now-in-pacific-d21-mall-dwarka', N'PVR Sapphire Now in Pacific D21 Mall Dwarka', N'PVR Sapphire Now in Pacific D21 Mall Dwarka', N'PVR Sapphire Now in Pacific D21 Mall Dwarka', CAST(N'2021-09-12 15:41:46.547' AS DateTime), CAST(N'2021-09-12 21:05:14.223' AS DateTime), N'/Uploads/images/Blog/PVR-1-1-1024x475.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (24, N'Our nation is currently experiencing a public health emergency as a result of the COVID-19 pandemic. We have a duty of care and your safety is our utmost priority. To make you confident and carefree inside our mall, we have undertaken every possible way and precaution. Whether it is the efficient use of technologies or strict guidelines, we instated effective safety measures as a part of our continuing response of COVID-19.', CAST(N'2021-09-12' AS Date), 1005, N'Keeping You Safe During Your Visit to Pacific Mall', N'<p>Our nation is currently experiencing a public health emergency as a result of the COVID-19 pandemic. We have a duty of care and your&nbsp;safety is our utmost priority. To make you confident and carefree inside our mall, we have undertaken every possible way and precaution. Whether it is the efficient use of technologies or strict guidelines, we instated effective safety measures as a part of our continuing response of COVID-19. Here are some of the notable measures that Pacific precisely follows:</p>

<p><strong>What measures are in place?</strong></p>

<p><strong>Body Temperature Check</strong></p>

<p>Before anyone steps in our mall, should go through temperature screening. Therefore, we can easily avoid any sick person inside.</p>

<p><strong>Mandatory use of a mask</strong></p>

<p>Masks are mandatory for everyone.</p>

<p>Make sure you bring your mask when you visit us.</p>

<p><strong>Hand Sanitization</strong></p>

<p>We have several hand sanitization stands at the key points throughout the mall. We ask everyone to make use of these frequently. You can also opt for soap and water in washrooms to sanitize your hands.</p>

<p><strong>Social Distancing</strong></p>

<p>For the reminder, we have signage illustrating the importance of social distancing. We have also restricted the number of customers inside every store.</p>

<p><strong>Use of gloves and PPE kits by all concerned staff wherever applicable</strong></p>

<p>A hygienic cleaning comes from the hygienic cleaning staff. The correct use of Personal Protective Equipment (PPE) among our staff is important and we are implementing crucially.</p>

<p><strong>Frequent sanitization of mall common areas</strong></p>

<p>We sanitize the mall common areas frequently to make your stay safe.</p>

<p><strong>Regular disinfection of customers&rsquo; touchpoints</strong></p>

<p>We have reduced the touchpoints to a minimum. However, we also regularly disinfect these touchpoints after every single use.</p>

<p><strong>Periodic disinfection of air conditioning system</strong></p>

<p>When it comes to the cleanness of air quality, we periodically disinfect the air conditioning system.</p>

<p><strong>Contactless food ordering and payment options</strong></p>

<p>Our food ordering system is completely contactless. Only you will be the one who touches your food with bare hands. We also encourage contactless payment options among the customers.</p>

<p><strong>Installment of plexiglass screen at the checkout and payment terminals</strong></p>

<p>To avoid any possible physical contact with you and our staff, we have installed a plexiglass screen where we can assist you in keeping the social distance.</p>

<p><strong>Alternate seating system in the food court</strong></p>

<p>Whether you are having your meal or walking around the mall, we ensure social distancing in every way. An alternate seating system will keep you to maintain the social distancing.</p>

<p><strong>When visiting please follow the marked routes</strong></p>

<p>Once inside, we ask you to cooperate with us. We have marked the routes that lead you to your desired shop, make sure to follow them.</p>

<p><strong>You may have to queue</strong></p>

<p>For your safety, our guidelines have a strictly restricted number of visitors inside each store. This may end up with you standing in a queue. Just keep this in mind, this is all for your safety.</p>

<p><strong>The bottom lines</strong></p>

<p>We understand the severity of the crisis &ndash; therefore, we have gone beyond the government&rsquo;s guidelines to make Pacific Mall the&nbsp;<a href="https://www.pacificmalls.in/tagore-garden/" rel="noreferrer noopener" target="_blank">safest shopping center</a>. We just ask you to play your part and your cooperation is all we need.</p>
', 1, N'keeping-you-safe-during-your-visit-to-pacific-mall', N'Keeping You Safe During Your Visit to Pacific Mall', N'Keeping You Safe During Your Visit to Pacific Mall', N'Keeping You Safe During Your Visit to Pacific Mall', CAST(N'2021-09-12 15:45:16.077' AS DateTime), CAST(N'2021-09-12 15:45:16.077' AS DateTime), N'/Uploads/images/Blog/WhatsApp-Image-2020-09-29-at-5_26_13-PM-1024x590.jpeg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (25, N'On the 19th of March 2021, Apple launched its first-ever North-Indian flagship store in the capital of India in Pacific Mall, Tagore Garden. Following the launch, the store witnessed a large gathering of consumers because of the store’s exclusivity of products as well as the discounts that the branded store had offered to people being the first flagship launch of North India. Starting with the big launch and discounted prices on 19th March, the offers remained valid only till the 21st March.', CAST(N'2021-09-13' AS Date), 1005, N'Pacific Mall is now home to Apple’s first flagship store in North India', N'<p>On the 19th of March 2021,&nbsp;<a href="https://www.pacificmalls.in/tagore-garden/unicorn-apple-iphone-store" rel="noreferrer noopener" target="_blank">Apple&nbsp;</a>launched its first-ever North-Indian flagship store in the capital of India in Pacific Mall, Tagore Garden. Following the launch, the store witnessed a large gathering of consumers&nbsp;because of the store&rsquo;s exclusivity of products as well as the discounts that the branded store had offered to people being the first flagship launch of North India. Starting with the big launch and discounted prices on 19th March, the offers remained valid only till the 21st March.</p>

<p>Albeit the offers had expired two days after the launch, people were still lined up to make a purchase of the premium products. On the occasion of the launch, Mr. Baljinder Paul Singh, Director of Unicorn Infosolutions Pvt. Ltd. said, &ldquo;It gives us immense pleasure to introduce the first flagship store in New Delhi. This will enable our customers to choose from a range of world-class Apple products and services under one roof. UNI is already seen as a brand synonymous with exemplary user experience and a vast array of products that speak for themselves. Our goal is to make Unicorn the best retail brand in India when it comes to lifestyle technology products.&rdquo; The words and praises for the technology of the brand expressed by the Director of the store transcended into reality for every person was content with the purchase amongst the thousands of variety of products that were offered at the store.</p>

<p>iPad, iphone11, iphone12, and a few of the other premium products witnessed high affair discounts during the launch. Having started in April 1976, Apple has garnered a global loyal audience since the time of its inception, making an impact on its image. Pacific Mall engaged with the brand providing it the space for the first flagship store and collaborating for its launch on a large scale of events.</p>
', 1, N'pacific-mall-is-now-home-to-apples-first-flagship-store-in-north-india', N'Pacific Mall is now home to Apple’s first flagship store in North India', N'Pacific Mall is now home to Apple’s first flagship store in North India', N'Pacific Mall is now home to Apple’s first flagship store in North India', CAST(N'2021-09-12 15:48:00.953' AS DateTime), CAST(N'2021-09-12 15:48:00.953' AS DateTime), N'/Uploads/images/Blog/pacific-apple-1024x475.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (26, N'In 1917, the company was established in Switzerland. Back then, it was known as “Schulp and co”. It was later in 1957, the name Rado was used. Soon, Rado became a matchless name in crafting bracketed watches and many others.', CAST(N'2021-09-11' AS Date), 1005, N'New Brand Alert: Rado stepped into Pacific Mall', N'<p>In 1917, the company was established in Switzerland. Back then, it was known as &ldquo;Schulp and co&rdquo;. It was later in 1957, the name Rado was used. Soon, Rado became a matchless name in crafting bracketed watches and&nbsp;many others.</p>

<p>Since then,&nbsp;<strong><a href="https://www.pacificmalls.in/tagore-garden/rado-branded-watch-store">Rado&nbsp;</a></strong>never looked behind. It bagged several prominent awards, but one of the most notable ones was the &lsquo;Good Design Award&rsquo; in 2002 in Chicago and it managed to bag the same in 2005 in Japan. Design for a watch is always the main priority for a watch manufacturer. These two awards dedicated to applauding the finest design of that time, skyrocketed the popularity of Rado and soon, the brand emerged as a mainstream watch manufacturing company.</p>

<p>Since then, Rado has scooped several awards and appreciation for its design and quality throughout its wide range of products. Their tagline &lsquo;if you can imagine it, we can make it&rsquo; still holds true today.</p>

<p>Rado has distinguished fame in the market. People are faithful to this brand, as it has a wide range of variety including Sintra, ceremica, true, and original. Each of its categories has its own uniqueness and taste.</p>

<p>A grand showroom of Rado at&nbsp;<strong><a href="https://www.pacificmalls.in/">Pacific Mall</a></strong>, Tagore Garden serves the finest and latest collection of&nbsp;<a href="https://www.pacificmalls.in/tagore-garden/jewellery-watches.php">Rado Watches</a>. Make your visit and check out.</p>
', 1, N'new-brand-alert-rado-stepped-into-pacific-mall', N'New Brand Alert: Rado stepped into Pacific Mall', N'New Brand Alert: Rado stepped into Pacific Mall', N'New Brand Alert: Rado stepped into Pacific Mall', CAST(N'2021-09-12 16:03:40.040' AS DateTime), CAST(N'2021-09-12 16:03:40.040' AS DateTime), N'/Uploads/images/Blog/Blog-Image-2-1024x536.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (27, N'In the recent work of event organized by MAPIC India, our Pacific Mall, Dehradun has been appreciated and applauded by MAPIC India, a vested authority, in the category of “Most admired shopping center of the year in Non Metro North”.', CAST(N'2021-09-12' AS Date), 1005, N'Pacific Mall is the most admired mall in Non Metro North – MAPIC India Award 2021', N'<p>In the recent work of event organized by MAPIC India, our&nbsp;<strong><a href="https://www.pacificmalls.in/dehradun">Pacific Mall, Dehradun</a></strong>&nbsp;has been appreciated and applauded by MAPIC India, a vested authority, in the category of &ldquo;Most admired shopping&nbsp;center of the year in Non Metro North&rdquo;.</p>

<p>MAPIC India, formerly renowned as India Retail Forum was established in 1995. The company lends opportunities, growth, and the experience of future of retail, its evolution as well as the perspective of the market to widen the horizon of the mind. The ethos of the company remains intact in bringing forward the companies excelling in the field of retail. Acting as a critic authority, it comes forth as a platform of appreciating, evaluating and praising such companies.</p>

<p>Having the regarded premium facilities &ndash; cinema, wide and open spaces, engaging, and being customer centric; the mall has gained admiration among the masses which has made it possible for the mall to gain the title of the most admired mall. Keeping the customer centric theme of facilities rooted the mall is sustaining and growing with time.</p>

<p>The award is known to hold a prestigious value. As the masses enjoy the facilities of entertainment, food, services, and hospitality, the mall became an icon to the people where they could come and have a gala time. Hence, MAPIC India being the recognizer, took notice of the popularity and admiration that the mall had garnered among the people.</p>
', 1, N'pacific-mall-is-the-most-admired-mall-in-non-metro-north-mapic-india-award-2021', N'Pacific Mall is the most admired mall in Non Metro North – MAPIC India Award 2021', N'Pacific Mall is the most admired mall in Non Metro North – MAPIC India Award 2021', N'Pacific Mall is the most admired mall in Non Metro North – MAPIC India Award 2021', CAST(N'2021-09-12 16:06:39.587' AS DateTime), CAST(N'2021-09-12 16:06:39.587' AS DateTime), N'/Uploads/images/Blog/Blog-IMage.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (28, N'In several ways, Under Armour has redefined the fitness gears. Not many companies stand out of the crowd to make a unique impression among the buyers. However, Under Armour is definitely an exception. This is among the most celebrated brand in the United States, but in India, they have just handpicked outlets.', CAST(N'2021-09-10' AS Date), 1005, N'Under Armour Now Open in Pacific Mall, Tagore Garden', N'<p>In several ways, Under Armour has redefined the fitness gears. Not many companies stand out of the crowd to make a unique impression among the buyers. However,&nbsp;<a href="https://www.pacificmalls.in/tagore-garden/under-armour-sports-footwear-and-apparel" rel="noreferrer noopener" target="_blank">Under Armour</a>&nbsp;is definitely an exception. This is among the most celebrated brand&nbsp;in the United States, but in India, they have just handpicked outlets. Fortunately, now one of them is in our&nbsp;<a href="https://www.pacificmalls.in/">Pacific Mall</a>. Fitness is one of the major concerns for people in desk jobs. Whether you opted for swimming, gym session, aerobics, or anything, this brand got you covered with their premium and smartly engineered gears, sportswear, and accessories. Under Armour was founded in 1996 by Kevin Plank. Since then, the brand is crossing every milestone to offer best-in-class sportswear and gears. Our efforts are always focused on facilitating our customers with a wide variety of authentic and premium products under a single roof. Under Armour will help us to bring a wide range of advanced sportswear with hi-tech fabrics, and several gears that will not only boost your performance but also make you comfortable.</p>
', 1, N'under-armour-now-open-in-pacific-mall-tagore-garden', N'Under Armour Now Open in Pacific Mall, Tagore Garden', N'Under Armour Now Open in Pacific Mall, Tagore Garden', N'Under Armour Now Open in Pacific Mall, Tagore Garden', CAST(N'2021-09-12 16:08:44.930' AS DateTime), CAST(N'2021-09-12 16:08:44.930' AS DateTime), N'/Uploads/images/Blog/Blog-Image-1024x536.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (29, N'Eating and shopping are the most preferred leisure by the people living in Delhi. This may be the reason why Pacific Mall… in Tagore Garden welcomes around 50,000 people on a normal day. However, not all of them come to eat – Pacific Mall is a preferred destination for shopping, dining, and entertainment.', CAST(N'2021-09-18' AS Date), 1007, N'Pacific Mall: The Food Heaven', N'<p>Eating and shopping are the most preferred leisure by the people living in Delhi. This may be the reason why Pacific Mall&hellip;&nbsp;in Tagore Garden welcomes around 50,000 people on a normal day. However, not all of them come to eat &ndash; Pacific Mall is a preferred destination for shopping, dining, and entertainment.</p>

<p>When it comes to food &ndash; the mall serves the most hygienic and freshest cuisines in Delhi. Moreover, it offers varieties to fit every level of affordability and diet.</p>

<p>The&nbsp;<a href="https://www.pacificmalls.in/tagore-garden/food-court.php">food court in Pacific Mall</a>&nbsp;is called Salt and it has the crown of being the best food court in Tagore Garden. This always a good idea when people dine out in a group and everyone has his/her demand.</p>

<p>When you look for a dedicated restaurant, then still you will have several options. Biryani Blues, Dariyaganj, Panjabi Grills, and several other restaurants are there to offer the most authentic taste.</p>

<p>This place is a food heave because of the plethora of choices and quality that suit your standard. Almost every prominent food chain, be it KFC, Burger King, Dominos, Pizza Hut, Shanghai Moon, Bercoz, Subway, Amritsari Express, Chillis, Haldiram, and several others are available there with their extended menu cards. If you are hungry in West Delhi, make your visit to&nbsp;<a href="https://www.pacificmalls.in/">Pacific Mall</a>&nbsp;and you will never regret. Instead, people visit this place many times in a month for fun, entertainment, foods, shopping and quality time.</p>
', 1, N'pacific-mall-the-food-heaven', N'Pacific Mall: The Food Heaven', N'Pacific Mall: The Food Heaven', N'Pacific Mall: The Food Heaven', CAST(N'2021-09-12 16:11:00.870' AS DateTime), CAST(N'2021-09-12 16:11:00.870' AS DateTime), N'/Uploads/images/Blog/Food-Court-banner-1-1024x475.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (30, N'This summer, we have stepped a little further to reach you. We have arrived in NSP, Pitampura and soon we will open our gates to welcome visitors. However, we have been working for years in background; now, when we are all donewith every major to the minor thing – we are happy to introduce your favourite shopping mall in NSP, Pitampura.', CAST(N'2021-09-07' AS Date), 1005, N'A glace at our precautionary measure at Pacific Golf Estate', N'<p>This summer, we have stepped a little further to reach you. We have arrived in NSP, Pitampura and soon we will open our gates to welcome visitors. However, we have been working for years in background; now, when we are all donewith every major to the minor thing &ndash; we are happy to introduce your favourite&nbsp;<strong><a href="https://www.pacificmalls.in/nsp-pitampura/">shopping mall in NSP</a></strong>, Pitampura.</p>

<p>The region NSP and Pitampura were in need of a decent place to shop, dine and have fun. Keeping this into account, our arrival at this place is an attempt to fill those missing pieces, and offer the best place where people can hang out. Here are some of the features of this new shopping mall:</p>

<p><strong>A home to your favourite brands</strong></p>

<p>The future of retail depends on the new and exciting experience for the customers. We have handpicked the finest brands from across the globe so that when you walk inside you will have the best possible retail experience.</p>

<p>Reliance Trends, Reliance Digital, Westside, Rosso Brunello, Vero Moda, Only and Jack n Jones are just a glimpse of brands associated with this mall. Find out the list of all brands in&nbsp;<a href="https://www.pacificmalls.in/nsp-pitampura/brand-list.php"><strong>Pacific Mall, NSP, Pitampura</strong></a>.</p>

<p><strong>A plethora of options to dine:</strong></p>

<p>Whether you enjoy delicious dining during mid-shopping break or you fancy a variety of cuisines from the best food chains across the world, we have arranged all. At Pacific Mall, NSP, Pitampura, you will find varieties of restaurants and cafes to grab a table or luxury booth.</p>

<p>You can also opt-in for a spacious terrace seat to enjoy the beautiful weather while having your favourite cuisines. You will find a parade of prominent food brands in our food street and food court to enjoy varieties served on a single table.</p>

<p><strong>Why this place will be your favourite hangout destination</strong></p>

<p>The mall hosts a grand cinema theater with 1800 seating capacity spread over the 9 screens. Cinepolis is an internationally acclaimed name for a modern and luxurious cinema experience. You can enjoy the latest blockbuster with your loved ones on a big screen.</p>

<p>We also have a corner for kids and family to hang out. Masti zone offers several entertainment games.</p>

<p>We are all set to welcome you to a safe and entertainment zone where you can enjoy the ultimate shopping experience, delicious dining, and many places to swing your bad mood to happiness.</p>
', 1, N'a-glace-at-our-precautionary-measure-at-pacific-golf-estate', N'A glace at our precautionary measure at Pacific Golf Estate', N'A glace at our precautionary measure at Pacific Golf Estate', N'A glace at our precautionary measure at Pacific Golf Estate', CAST(N'2021-09-12 16:22:09.740' AS DateTime), CAST(N'2021-09-12 16:22:09.740' AS DateTime), N'/Uploads/images/Blog/NSP-Blog-1024x583.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (31, N'We always indend to go above and beyond when it is the safety of you. In the current pandemic crisis, nothing will be as special as offering a safe and fast platform for you to get vaccinated.', CAST(N'2021-09-07' AS Date), 1006, N'Pacific Mall, Tagore Garden welcomes you to get vaccinated with the reduced vaccination price', N'<p>We always indend to go above and beyond when it is the safety of you. In the current pandemic crisis, nothing will be as special as offering a safe and fast platform for you to get vaccinated.</p>

<p><strong>Pacific Mall</strong>&nbsp;has&nbsp;tied up with&nbsp;<strong>Sri Balaji Action Multi Speciality Hospital</strong>&nbsp;to provide the drive-in facility with the reduced vaccine price.</p>

<p>On 8th June 2021, The Union Health Ministry has declared the price cap for the available vaccination in private facilities. The ministry has set the maximum price for Covidsheild vaccine INR 780 per dose.</p>

<p>People can avail the reduced price along with a safe and secure environment for vaccination. Drive-in can be the less stressful option for the people as they do not have to stay on the line and maintain several precautionary measures during the process.</p>

<p><strong>Drive-in vaccination</strong>&nbsp;process is the safest and most convenient for people. Our managing team has collaborated with the professionals of Sri Balaji Action Multi Speciality Hospital and together we offer you the best service.</p>

<p>The first day of vaccination started with the people living in West Delhi and nearby. Covidsheild vaccine jabs were given to individuals in the age group of 18+ and 45+. The vaccinated people have to stay 1 hour for the inspection of the post-vaccination result. In case of emergency, a team is ready to attend to the vaccine beneficiary.</p>

<p><strong>Dr. Anand Bansal</strong>, Medical Director, Balaji Action Medical Multi Speciality Hospital expressed his thought, &ldquo;We always strive to work in the interest of well-being of the humanity, this drive will be a small effort towards keeping our countrymen safe and Pacific Mall has always come forward as a trailblazer in such programs&rdquo;.</p>

<p>Our managing director,&nbsp;<strong>Mr. Abhishek Bansal</strong>&nbsp;also praise the campaign and said, &ldquo;Serving the community is of utmost importance as the world grapples with a deadly pandemic. At a time, when people are battling with the issue of booking vaccine slots, our mall team is striving hard to make this process less cumbersome. We are grateful to our partners, the community, and all the staff members present on the ground who have made this happen flawlessly.&rdquo;</p>

<p>We encourage every individual to get vaccinated and be a warrior to fight against this virus. We also emphasize precautionary measures especially maintaining social distancing, wearing a face mask,s and keeping hand hygiene. It doesn&rsquo;t matter you are vaccinated or not, the safety protocol should be followed with the same sincerity.</p>
', 1, N'pacific-mall-tagore-garden-welcomes-you-to-get-vaccinated-with-the-reduced-vaccination-price', N'Pacific Mall, Tagore Garden welcomes you to get vaccinated with the reduced vaccination price', N'Pacific Mall, Tagore Garden welcomes you to get vaccinated with the reduced vaccination price', N'Pacific Mall, Tagore Garden welcomes you to get vaccinated with the reduced vaccination price', CAST(N'2021-09-12 16:27:59.587' AS DateTime), CAST(N'2021-09-12 16:27:59.587' AS DateTime), N'/Uploads/images/Blog/1200-x-628-1024x536.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (32, N'We are ready to welcome you again. It’s good news for all of us. Our non-essential stores are now open to serve you. Pacific Mall, Tagore Garden and Pacific D21 Mall, following the guidelines, have opened the door for shoppers. It’s a good sign that we are crawling back to our normal days.', CAST(N'2021-09-08' AS Date), 1006, N'Pacific Mall is now open for a safe and ultimate shopping experience', N'<p>We are ready to welcome you again. It&rsquo;s good news for all of us. Our non-essential stores are now open to serve you.&nbsp;<strong><a href="https://www.pacificmalls.in/tagore-garden/">Pacific Mall, Tagore Garden</a></strong>&nbsp;and&nbsp;<strong><a href="https://www.pacificmalls.in/dwarka">Pacific D21 Mall</a></strong>, following the guidelines,&nbsp;have opened the door for shoppers. It&rsquo;s a good sign that we are crawling back to our normal days.</p>

<p>COVID-19 pandemic has impacted everyone on this planet. Fortunately, unlike last year, we have vaccination as a tool to fight against. And eventually, many experts have estimated we will be back to our normal days.</p>

<p>Before we opened our door for visitors, we worked really hard to ensure the safety measures inside the mall. We systematically arranged a reliable safety process that lets you freely enjoy your shopping.</p>

<p>No one is allowed without mask. No matter the person is vaccinated or not, whether he/she has breathing problem or something else, we do not allow anyone inside the mall without face mask. We appreciated the visitors who wear double mask to make it more effective.</p>

<p>We do not let any sick person inside the mall. On every entrance, the visitor has to pass with the temperature check and our security personelles do not allow any person with abnormal body temperature.</p>

<p>In all possible ways, we have reduced the touchpoints to minimum. Moreover, we frequently santize the common touchpoints. While we have certain guidelines for the billing queue. We are there to make sure that everyone is following 2 meter distancing across the mall.</p>

<p>You will find sanitizers everywhere inside the mall and we recommend to use them frequently. We also in a continuous process to sanitisze every common area including washrooms, lifts, atrium and so on.</p>

<p>As far as parking is concerned, we have removed the ticketing process to avoid the touchpoints. However, we do not comprise with any security measures. A vehicle has to go for security check but there will be no ticketing process for parking. Like earlier, it is free.</p>

<p>We are all set to offer you a safe and exciting destination for shopping. Make your visit to check out the latest products from your favorite brand.</p>
', 1, N'pacific-mall-is-now-open-for-a-safe-and-ultimate-shopping-experience', N'Pacific Mall is now open for a safe and ultimate shopping experience', N'Pacific Mall is now open for a safe and ultimate shopping experience', N'Pacific Mall is now open for a safe and ultimate shopping experience', CAST(N'2021-09-12 16:33:57.363' AS DateTime), CAST(N'2021-09-12 16:33:57.363' AS DateTime), N'/Uploads/images/Blog/1200-x-600-1024x512.jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (33, N'In 2019, Pacific Group took the plunge, expanding its reach to people living in Dwarka. It was the first full-fledged shopping mall in this region. Today, we have recently celebrated its first anniversary. Pacific D21 Mall is a flagship project that has brought several internationally acclaimed brands under a single roof.', CAST(N'2021-09-14' AS Date), 1009, N'A year of ups and downs: Pacific D21 celebrated its first anniversary', N'<p>In 2019, Pacific Group took the plunge, expanding its reach to people living in Dwarka. It was the first full-fledged shopping mall in this region. Today, we have recently celebrated its first anniversary.&nbsp;<a href="https://www.pacificmalls.in/dwarka"><strong>Pacific D21 Mall</strong></a>&nbsp;is a flagship&nbsp;project that has brought several internationally acclaimed brands under a single roof.</p>

<p>Last year was harsh for every one of us. Not just, it was unprecedented but also it has created a severe loss to our society and people. However, we fought and still fighting until we beat this COVID-19.</p>

<p>In spite of this, things are getting better. With bittersweet memories, here we are with our anniversary &ndash; celebrating the joy of premium shopping, delicious dining, and thrilling fun, but before we promise all these amusements, we have arranged a safe environment for you.</p>

<p>We never compromise with the slightest of safety measures. We have an effective set of guidelines and facilities that assure our visitors &ndash; they are safe in Pacific.</p>

<p><a href="https://www.pacificmalls.in/dwarka/multi-brand-retail.php"><strong>Pacific D21 Mall</strong></a>&nbsp;offers an appreciated blend of retail experience. It fits every taste and every level of affordability. This well-planned retail project exemplifies perfection. Situated at Sector 21, metro station, the mall is within the reach of everyone across the Dwarka.</p>

<p>From retail varieties to craving options and from the finest&nbsp;<a href="https://www.pacificmalls.in/dwarka/pvr.php"><strong>PVR</strong></a>&nbsp;Sapphire to&nbsp;<a href="https://www.pacificmalls.in/dwarka/funky-island-kids-entertainment-and-game-zone"><strong>Funky Island</strong></a>&nbsp;full of thrill and entertainment, the place suits every people of any age. Our customer-centric services and facilities add more magnitude in the reason that you should visit us frequently.</p>

<p>In another few years, Pacific will come up with other leading retail projects in Delhi.&nbsp;<strong><a href="https://www.pacificindia.in/">Pacific Group</a></strong>&nbsp;has contributed immensely in redefining&nbsp;<a href="https://www.pacificmalls.in/"><strong>shopping malls in India</strong></a>&nbsp;and it will continue to bring innovative approaches to the retail industry.&nbsp;</p>
', 1, N'a-year-of-ups-and-downs-pacific-d21-celebrated-its-first-anniversary', N'A year of ups and downs: Pacific D21 celebrated its first anniversary', N'A year of ups and downs: Pacific D21 celebrated its first anniversary', N'A year of ups and downs: Pacific D21 celebrated its first anniversary', CAST(N'2021-09-12 21:01:22.707' AS DateTime), CAST(N'2021-09-12 21:04:55.317' AS DateTime), N'/Uploads/images/Blog/Blog-Image-1024x536(1).jpg')
INSERT [dbo].[Blog] ([BlogId], [Description], [BlogTime], [Category_blog_id], [Title], [Content], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Images]) VALUES (34, N'Regardless of what season it is now, there are always plenty of reasons to visit our mall. In this article, we decided to show you the list of Top 3 reasons to visit Fashion Day.', CAST(N'2021-09-17' AS Date), 1005, N'Planning Your Weekend? Visit Fashion Day!', N'<p><img alt="" src="/Uploads/images/Blog/post-03-960x550.jpg" style="float:left; height:550px; width:960px" /></p>

<p>Regardless of what season it is now, there are always plenty of reasons to visit our mall. In this article, we decided to show you the list of Top 3 reasons to visit Fashion Day. to begin with, people usually visit shopping malls to enjoy variety while shopping, for socialization and for entertainment. People also visit malls because they offer one-stop shopping convenience and save time.</p>

<p>However, Fashion Day has some additional attractions and reasons to visit it. For example, our mall&rsquo;s main claim to fame is its sheer size. An expansion will be opening soon, but for now, we already have a jaw-dropping number of 520 open stores. This means if you decided to spend just 10-minutes in each store, it would take you 86-hours to do it. That&rsquo;s three and a half days!</p>

<p>We also have about 100 events every year that feature celebrity appearances. A recent meet-and-greet with internet personality Tyler Oakley, held in conjunction with the release of his book &ldquo;Binge,&rdquo; drew a sell-out crowd.</p>
', 1, N'planning-your-weekend-visit-fashion-day', N'Planning Your Weekend? Visit Fashion Day!', N'Planning Your Weekend? Visit Fashion Day!', N'Planning Your Weekend? Visit Fashion Day!', CAST(N'2021-09-12 21:34:05.523' AS DateTime), CAST(N'2021-09-13 14:22:51.030' AS DateTime), N'/Uploads/images/Blog/post-03-960x550.jpg')
SET IDENTITY_INSERT [dbo].[Blog] OFF
SET IDENTITY_INSERT [dbo].[Category_blog] ON 

INSERT [dbo].[Category_blog] ([Cate_blog_id], [name], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (1005, N'News', N'news', N'News', N'News ', N'News ', CAST(N'2021-09-09 21:00:51.777' AS DateTime), CAST(N'2021-09-09 21:00:51.777' AS DateTime))
INSERT [dbo].[Category_blog] ([Cate_blog_id], [name], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (1006, N'Shops', N'shops', N'Shops', N'Shops', N'Shops', CAST(N'2021-09-09 21:01:41.150' AS DateTime), CAST(N'2021-09-09 21:01:41.150' AS DateTime))
INSERT [dbo].[Category_blog] ([Cate_blog_id], [name], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (1007, N'Restaurants & Cafes', N'restaurants-cafes', N'Restaurants & Cafes', N'Restaurants & Cafes', N'Restaurants & Cafes', CAST(N'2021-09-09 21:02:06.220' AS DateTime), CAST(N'2021-09-09 21:02:06.220' AS DateTime))
INSERT [dbo].[Category_blog] ([Cate_blog_id], [name], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (1008, N'Entertainment', N'entertainment', N'Entertainment', N'Entertainment', N'Entertainment', CAST(N'2021-09-09 21:02:25.920' AS DateTime), CAST(N'2021-09-09 21:02:25.920' AS DateTime))
INSERT [dbo].[Category_blog] ([Cate_blog_id], [name], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (1009, N'Events', N'events', N'Events', N'Events', N'Events', CAST(N'2021-09-09 21:02:52.163' AS DateTime), CAST(N'2021-09-09 21:02:52.163' AS DateTime))
SET IDENTITY_INSERT [dbo].[Category_blog] OFF
SET IDENTITY_INSERT [dbo].[Category_Movie] ON 

INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (1, N'Action', CAST(N'2021-09-04 21:50:29.323' AS DateTime), CAST(N'2021-09-04 21:50:29.323' AS DateTime), N'action', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (2, N'Adventure', CAST(N'2021-09-04 21:50:41.930' AS DateTime), CAST(N'2021-09-04 21:50:41.930' AS DateTime), N'adventure', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (3, N'Animated', CAST(N'2021-09-04 21:51:07.337' AS DateTime), CAST(N'2021-09-04 21:51:07.337' AS DateTime), N'animated', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (4, N'Classic', CAST(N'2021-09-04 21:51:32.253' AS DateTime), CAST(N'2021-09-04 21:51:32.253' AS DateTime), N'classic', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (5, N'Comedy', CAST(N'2021-09-04 21:51:38.887' AS DateTime), CAST(N'2021-09-04 21:51:38.887' AS DateTime), N'comedy', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (6, N'Crime', CAST(N'2021-09-04 21:51:47.360' AS DateTime), CAST(N'2021-09-04 21:51:47.360' AS DateTime), N'crime', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (7, N'Documentary', CAST(N'2021-09-04 21:52:15.697' AS DateTime), CAST(N'2021-09-04 21:52:15.697' AS DateTime), N'documentary', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (8, N'Drama', CAST(N'2021-09-04 21:52:21.903' AS DateTime), CAST(N'2021-09-04 21:52:21.903' AS DateTime), N'drama', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (9, N'Epic', CAST(N'2021-09-04 21:52:32.897' AS DateTime), CAST(N'2021-09-04 21:52:32.897' AS DateTime), N'epic', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (10, N'Family', CAST(N'2021-09-04 21:52:41.373' AS DateTime), CAST(N'2021-09-04 21:52:41.373' AS DateTime), N'family', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (11, N'Fantasy', CAST(N'2021-09-04 21:52:51.600' AS DateTime), CAST(N'2021-09-04 21:52:51.600' AS DateTime), N'fantasy', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (12, N'Horror', CAST(N'2021-09-04 21:53:05.560' AS DateTime), CAST(N'2021-09-04 21:53:05.560' AS DateTime), N'horror', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (13, N'Music', CAST(N'2021-09-04 21:53:16.147' AS DateTime), CAST(N'2021-09-04 21:53:16.147' AS DateTime), N'music', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (14, N'Short', CAST(N'2021-09-04 21:53:30.703' AS DateTime), CAST(N'2021-09-04 21:53:30.703' AS DateTime), N'short', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (15, N'War', CAST(N'2021-09-04 21:53:43.070' AS DateTime), CAST(N'2021-09-04 21:53:43.070' AS DateTime), N'war', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (16, N'Suspense', CAST(N'2021-09-04 21:54:00.767' AS DateTime), CAST(N'2021-09-04 21:54:00.767' AS DateTime), N'suspense', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (17, N'Western', CAST(N'2021-09-04 21:54:12.817' AS DateTime), CAST(N'2021-09-04 21:54:12.817' AS DateTime), N'western', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (18, N'Thriller', CAST(N'2021-09-04 21:59:56.897' AS DateTime), CAST(N'2021-09-04 21:59:56.897' AS DateTime), N'thriller', N'ttt', N'kkk', N'ppp')
INSERT [dbo].[Category_Movie] ([Cate_id], [Name], [CreatedDate], [ModifiedDate], [slug], [Meta_title], [Meta_keyword], [Meta_description]) VALUES (19, N'Romantic', CAST(N'2021-09-04 22:07:24.957' AS DateTime), CAST(N'2021-09-04 22:07:24.957' AS DateTime), N'romantic', N'ttt', N'kkk', N'ppp')
SET IDENTITY_INSERT [dbo].[Category_Movie] OFF
SET IDENTITY_INSERT [dbo].[Config] ON 

INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (7, N'IPMap', N'21.046394, 105.783437', 1, CAST(N'2021-08-28 08:25:33.927' AS DateTime), CAST(N'2021-09-12 08:48:53.793' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (8, N'Location', N'2130 Fulton Street, San Diego, CA 94117-1080 USA', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (9, N'Time', N'Opening Hours: 9:00am–9:00pm Supermarket: 7:00am–11:00pm', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (10, N'Phone', N'123-132-1421', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (11, N'Mail', N'mail@demolink.org', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (12, N'Meta_Title', N'mail@demolink.org', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.797' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (13, N'Meta_Keyword', N'mail@demolink.org', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (14, N'Meta_description', N'Audrey Mail is a four-story shopping and entertainment center located in the heart of downtown San Diego in the thriving Yerba Buena Neighborhood. Shop at the City Target on the second level and visit a 16-screen AMC Theater with the largest IMAX in North America.', 1, CAST(N'2021-08-28 21:25:49.700' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (15, N'icon', N'/Uploads/images/banner/favicon.ico', 1, CAST(N'2021-09-02 09:33:12.470' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
INSERT [dbo].[Config] ([Id], [title], [value], [Status], [CreatedDate], [ModifiedDate]) VALUES (16, N'icon1', N'/Uploads/images/banner/logo-202x56.png', 1, CAST(N'2021-09-02 09:33:12.470' AS DateTime), CAST(N'2021-09-12 08:48:53.790' AS DateTime))
SET IDENTITY_INSERT [dbo].[Config] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (2, N'Quang Long', N'0938478223', N'ahihi@gmail.com', CAST(N'2021-09-04 22:49:22.683' AS DateTime), CAST(N'2021-09-04 22:49:22.683' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (3, N'Quang Dat', N'0985765354', N'ahaha@gmail.com', CAST(N'2021-09-05 10:46:14.963' AS DateTime), CAST(N'2021-09-05 10:46:14.963' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (4, N'Long Den', N'0938478223', N'nhokimlien1411@gmail.com', CAST(N'2021-09-05 14:54:14.240' AS DateTime), CAST(N'2021-09-05 14:54:14.240' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (5, N'Pham Duyen', N'0938478223', N'nhokimlien1411@gmail.com', CAST(N'2021-09-05 15:19:49.777' AS DateTime), CAST(N'2021-09-05 15:19:49.777' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (6, N'Thanh My', N'0938478223', N'nhokimlien1411@gmail.com', CAST(N'2021-09-05 15:27:23.287' AS DateTime), CAST(N'2021-09-05 15:27:23.287' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (7, N'Van Huy', N'0938478223', N'nhokimlien1411@gmail.com', CAST(N'2021-09-05 15:41:08.070' AS DateTime), CAST(N'2021-09-05 15:41:08.070' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (8, N'Tien Dat', N'0935783743', N'nhokimlien1411@gmail.com', CAST(N'2021-09-08 10:25:08.413' AS DateTime), CAST(N'2021-09-08 10:25:08.413' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (9, N'Quang Long', N'0938478223', N'nhokimlien1411@gmail.com', CAST(N'2021-09-09 15:12:25.623' AS DateTime), CAST(N'2021-09-09 15:12:25.623' AS DateTime))
INSERT [dbo].[Customer] ([CustomerId], [FullName], [Phone], [Email], [CreatedDate], [ModifiedDate]) VALUES (10, N'Hai Bien', N'0938478223', N'nhokimlien1411@gmail.com', CAST(N'2021-09-12 14:19:54.437' AS DateTime), CAST(N'2021-09-12 14:19:54.437' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([Event_id], [Shop_ShoId], [Price], [Title], [Descriptions], [Image], [Address], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [EndDate], [StartDate]) VALUES (15, 8, 0, N'The KidsLand Summer Day', N'The KidsLand SummerDay will begin on Saturday, July 4, with a special celebration and will run until Sunday, September 4. Children can take part in a variety of themed activities and broadcast live events from the KidsLand Radio Station and TV Studio located at Audrey Mall.', N'/Uploads/images/Events/event1.jpg', N'The KidsLand ', N'the-kidsland-summer-day', N'The KidsLand Summer Day', N'the kidsland,summer day', N'The KidsLand SummerDay will begin on Saturday, July 4, with a special celebration and will run until Sunday, September', CAST(N'2021-09-09 14:22:56.127' AS DateTime), CAST(N'2021-09-10 16:06:05.840' AS DateTime), 1, CAST(N'2021-09-23 17:00:00.000' AS DateTime), CAST(N'2021-09-21 08:00:00.000' AS DateTime))
INSERT [dbo].[Events] ([Event_id], [Shop_ShoId], [Price], [Title], [Descriptions], [Image], [Address], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [EndDate], [StartDate]) VALUES (16, 19, 0, N'Audrey Cafe Evening', N'Relax and unwind throughout the Summer while sipping on a specially created Audrey 100 Champagne cocktail or a glass of Audrey 100 Punch, designed to help you cool down after a long day of shopping. A traditional English afternoon tea is also offered, alongside a delicious array of macaroni.', N'/Uploads/images/Events/event2.jpg', N'Audrey Cafe', N'audrey-cafe-evening', N'Audrey Cafe Evening', N'Audrey Cafe,event,cafe', N'Relax and unwind throughout the Summer while sipping on a specially created Audrey 100 Champagne cocktail', CAST(N'2021-09-09 14:25:41.173' AS DateTime), CAST(N'2021-09-09 14:25:41.173' AS DateTime), 1, CAST(N'2021-09-24 17:00:00.000' AS DateTime), CAST(N'2021-09-22 08:15:00.000' AS DateTime))
INSERT [dbo].[Events] ([Event_id], [Shop_ShoId], [Price], [Title], [Descriptions], [Image], [Address], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [EndDate], [StartDate]) VALUES (17, 23, 0, N'Audrey Mall Rock Event', N'Relax and unwind throughout the Summer while sipping on a specially created Audrey 100 Champagne cocktail or a glass of Audrey 100 Punch, designed to help you cool down after a long day of shopping. A traditional English afternoon tea is also offered, alongside a delicious array of macaroni.', N'/Uploads/images/Events/event3.jpg', N'Audrey Mall ', N'audrey-mall-rock-event', N'Audrey Mall Rock Event', N'audrey mall,event,rock', N'Chart-topping sensation Pixie Lott will unveil her very own festival-inspired addition to her latest album this Saturday evening', CAST(N'2021-09-09 14:28:49.377' AS DateTime), CAST(N'2021-09-09 14:28:49.377' AS DateTime), 1, CAST(N'2021-09-25 16:00:00.000' AS DateTime), CAST(N'2021-09-25 08:30:00.000' AS DateTime))
INSERT [dbo].[Events] ([Event_id], [Shop_ShoId], [Price], [Title], [Descriptions], [Image], [Address], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [EndDate], [StartDate]) VALUES (18, 25, 0, N'Chevrolet Open Test Drive', N'Relax and unwind throughout the Summer while sipping on a specially created Audrey 100 Champagne cocktail or a glass of Audrey 100 Punch, designed to help you cool down after a long day of shopping. A traditional English afternoon tea is also offered, alongside a delicious array of macaroni.', N'/Uploads/images/Events/event4.jpg', N'Audrey Mall ', N'chevrolet-open-test-drive', N'Chevrolet Open Test Drive', N'Chevrolet,test drive', N'Free and Open Test Drive of The Chevrolet Camaro will be available this weekend at Audrey Mall! Feel free to', CAST(N'2021-09-09 14:30:20.813' AS DateTime), CAST(N'2021-09-09 14:30:20.813' AS DateTime), 1, CAST(N'2021-09-26 15:00:00.000' AS DateTime), CAST(N'2021-09-24 09:00:00.000' AS DateTime))
INSERT [dbo].[Events] ([Event_id], [Shop_ShoId], [Price], [Title], [Descriptions], [Image], [Address], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [EndDate], [StartDate]) VALUES (19, 8, 0, N'Dance your Troubles Away', N'According to Healthy Living, dancing is effective in releasing endorphins resulting in feelings of well being and happiness. Furthermore, a study done by Professor Michael Norton from the Harvard Business School showed that people were happier when they spent money on other people!', N'/Uploads/images/Events/event5.jpg', N'Audrey Mall ', N'dance-your-troubles-away', N'Dance your Troubles Away', N'dance,audrey mall', N'So, what are you waiting for?  Go for the dance! ', CAST(N'2021-09-10 21:46:20.237' AS DateTime), CAST(N'2021-09-10 21:46:20.237' AS DateTime), 1, CAST(N'2021-09-25 22:00:00.000' AS DateTime), CAST(N'2021-09-25 17:00:00.000' AS DateTime))
INSERT [dbo].[Events] ([Event_id], [Shop_ShoId], [Price], [Title], [Descriptions], [Image], [Address], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [EndDate], [StartDate]) VALUES (20, 19, 0, N'Shopping Mall Interior Design', N'Fashion is always a huge draw not only for women but men and children as well. Consider an extravaganza fashion show for your next shopping mall event idea. A swag bag featuring free samples or coupons from your retailers could be part of the draw.', N'/Uploads/images/Events/event6.jpg', N'Audrey Mall ', N'shopping-mall-interior-design', N'Shopping Mall Interior Design', N'Audrey Mall,fashion', N'Innovative mall design incorporates value-added elements that attempt to address the convenience of online purchasing and to recast the mall as the new downtown hub', CAST(N'2021-09-10 21:59:30.447' AS DateTime), CAST(N'2021-09-10 21:59:30.447' AS DateTime), 1, CAST(N'2021-10-01 16:00:00.000' AS DateTime), CAST(N'2021-10-01 08:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Events] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([Id], [Email], [FirstName], [LastName], [Phone], [Content], [FBDate], [Status]) VALUES (7, N'dat@gmail.com', N'Tien', N'Dat', N'085347283', N'Hey John,

bah kivu decrete epanorthotic unnotched Argyroneta nonius veratrine preimaginary saunders demidolmen Chaldaic allusiveness lorriker unworshipping ribaldish tableman hendiadys outwrest unendeavored fulfillment scientifical Pianokoto Chelonia', CAST(N'2021-09-06 09:26:59.237' AS DateTime), 0)
INSERT [dbo].[Feedback] ([Id], [Email], [FirstName], [LastName], [Phone], [Content], [FBDate], [Status]) VALUES (8, N'thuy@gmail.com', N'Dang', N'Thuy', N'038974836', N'Hey John,

bah kivu decrete epanorthotic unnotched Argyroneta nonius veratrine preimaginary saunders demidolmen Chaldaic allusiveness lorriker unworshipping ribaldish tableman hendiadys outwrest unendeavored fulfillment scientifical Pianokoto Chelonia', CAST(N'2021-09-06 09:30:35.663' AS DateTime), 0)
INSERT [dbo].[Feedback] ([Id], [Email], [FirstName], [LastName], [Phone], [Content], [FBDate], [Status]) VALUES (9, N'hangbeo@gmail.com', N'Vu', N'Hang', N'0985734325', N'Hey John,

bah kivu decrete epanorthotic unnotched Argyroneta nonius veratrine preimaginary saunders demidolmen Chaldaic allusiveness lorriker unworshipping ribaldish tableman hendiadys outwrest unendeavored fulfillment scientifical Pianokoto Chelonia', CAST(N'2021-09-06 09:32:29.313' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[gallery] ON 

INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (55, N'/Uploads/images/Gallery/portfolio-01-420x590.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (56, N'/Uploads/images/Gallery/portfolio-02-1170x780_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (57, N'/Uploads/images/Gallery/portfolio-03-1170x962_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (58, N'/Uploads/images/Gallery/portfolio-04-420x590.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (59, N'/Uploads/images/Gallery/portfolio-05-1170x781_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (60, N'/Uploads/images/Gallery/portfolio-06-420x590.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (61, N'/Uploads/images/Gallery/portfolio-07-1170x781_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (62, N'/Uploads/images/Gallery/portfolio-08-1170x656_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (63, N'/Uploads/images/Gallery/portfolio-09-1170x781_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (64, N'/Uploads/images/Gallery/portfolio-10-1170x842_original.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (65, N'/Uploads/images/Gallery/portfolio-11-420x590.jpg', 1, CAST(N'2021-09-12 00:00:00.000' AS DateTime), CAST(N'2021-09-12 00:00:00.000' AS DateTime))
INSERT [dbo].[gallery] ([id], [image], [status], [createdDate], [Modifidate]) VALUES (70, N'/Uploads/images/Gallery/portfolio-12-1170x807_original.jpg', 1, CAST(N'2021-09-12 16:25:46.977' AS DateTime), CAST(N'2021-09-12 16:25:46.977' AS DateTime))
SET IDENTITY_INSERT [dbo].[gallery] OFF
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (1, N'Bell Bottom', N'/Uploads/images/Movies/movie1.jpg', 130, N'Robert De Niro, Michael Douglas, Morgan Freeman, Kevin Kline, Mary Steenburgen, Jerry Ferrara, Romany Malco ...', 13, N'Amongst multiple heinous airplane hijacks, India was made to face another such challenge in 1984. BellBottom, a RAW agent played by Akshay Kumar sees through the plan and thus, begins India`s first covert operation.A story inspired on true events, led by BellBottom, that went on to create one of the most defining moments of the country.', N'English', CAST(N'2021-08-19' AS Date), N'USA', N'bell-bottom', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 21:59:35.880' AS DateTime), CAST(N'2021-09-04 21:59:35.880' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg1.jpg', N'/Uploads/images/MoviePhotos/movie-img1.jpg,/Uploads/images/MoviePhotos/movie-img2.jpg,/Uploads/images/MoviePhotos/movie-img3.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (2, N'Fast and Furious 9', N'/Uploads/images/Movies/movie2.jpg', 143, N'Martin Freeman, Ian McKellen, Richard Armitage, Ken Stott, Graham McTavish,...', 13, N'Dom`s peaceful life with his wife Letty and son Brian is shattered when Dom`s past catches up to him. The gang is up against the most skilled assassin and high-performance driver - his little brother Jakob.', N'English', CAST(N'2021-09-02' AS Date), N'USA', N'fast-and-furious-9', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:02:07.200' AS DateTime), CAST(N'2021-09-04 22:02:07.200' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg2.jpg', N'/Uploads/images/MoviePhotos/movie-img6.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg,/Uploads/images/MoviePhotos/movie-img3.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (3, N'Shang-Chi and the Legend of the Ten Rings', N'/Uploads/images/Movies/movie3.jpg', 132, N'Martin Freeman, Ian McKellen, Richard Armitage, Ken Stott, Graham McTavish, Cate Blanchett, Hugo Weaving, Ian Holm, Elijah Wood ...', 13, N'Shang-Chi and The Legend of The Ten Rings features Simu Liu as Shang-Chi, who must confront the past he thought he left behind when he is drawn into the web of the mysterious Ten Rings organization. The film is directed by Destin Daniel Cretton and produced by Kevin Feige and Jonathan Schwartz.', N'English', CAST(N'2021-09-03' AS Date), N'USA', N'shang-chi-and-the-legend-of-the-ten-rings', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:03:33.020' AS DateTime), CAST(N'2021-09-04 22:03:33.020' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg3.jpg', N'/Uploads/images/MoviePhotos/movie-img4.jpg,/Uploads/images/MoviePhotos/movie-img3.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (4, N'Chehre', N'/Uploads/images/Movies/movie4.jpg', 139, N' Johnny Knoxville, Jackson Nicoll, Greg Harris, Georgina Cates, Kamber Hejlik, Jill Kill, Madison Davis ', 13, N'An 80-year-old criminal lawyer along with his friends has a penchant for real-life games. They conduct a mock trial and decide if justice has been served, if not they make sure justice has been served.', N'English', CAST(N'2021-08-27' AS Date), N'USA', N'chehre', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:05:20.567' AS DateTime), CAST(N'2021-09-04 22:05:20.567' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg4.jpg', N'/Uploads/images/MoviePhotos/movie-img2.jpg,/Uploads/images/MoviePhotos/movie-img4.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (5, N'Faactory', N'/Uploads/images/Movies/movie5.jpg', 96, N'Robert De Niro, Michael Douglas, Morgan Freeman, Kevin Kline, Mary Steenburgen, Jerry Ferrara, Romany Malco ...', 13, N'Yash falls in love with Natasha but is not able to profess his feelings to her. A few years later, he stalks and kidnaps her. Will they fall in love or will his obsession increase with time?', N'English', CAST(N'2021-09-03' AS Date), N'USA', N'faactory', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:07:03.427' AS DateTime), CAST(N'2021-09-04 22:07:03.427' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg5.jpg', N'/Uploads/images/MoviePhotos/movie-img4.jpg,/Uploads/images/MoviePhotos/movie-img2.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (6, N'The Balkan Line', N'/Uploads/images/Movies/movie6.jpg', 130, N'Johnny Knoxville, Jackson Nicoll, Greg Harris, Georgina Cates, Kamber Hejlik, Jill Kill, Madison Davis ', 16, N'After the NATO bombing of Yugoslavia in 1999, the Yugoslav army pulls out of Kosovo region, leaving Serbian people at the mercy of the Albanian UCK terrorists.', N'English', CAST(N'2019-03-21' AS Date), N'USA', N'the-balkan-line', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:09:55.030' AS DateTime), CAST(N'2021-09-04 22:09:55.030' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg6.jpg', N'/Uploads/images/MoviePhotos/movie-img6.jpg,/Uploads/images/MoviePhotos/movie-img2.jpg,/Uploads/images/MoviePhotos/movie-img4.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (7, N'Resistance', N'/Uploads/images/Movies/movie7.jpg', 120, N' Johnny Knoxville, Jackson Nicoll, Greg Harris, Georgina Cates, Kamber Hejlik, Jill Kill, Madison Davis ', 18, N'Based on the real story of the mime Marcel Marceau as he works with Jewish boy scouts and the French Resistance to save the lives of ten thousand orphans during World War II.', N'English', CAST(N'2020-03-27' AS Date), N'USA', N'resistance', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:13:17.033' AS DateTime), CAST(N'2021-09-04 22:13:17.033' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg7.jpg', N'/Uploads/images/MoviePhotos/movie-img4.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg,/Uploads/images/MoviePhotos/movie-img2.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (8, N'The Secrets We Keep', N'/Uploads/images/Movies/movie8.jpg', 97, N'Martin Freeman, Ian McKellen, Richard Armitage, Ken Stott, Graham McTavish,...', 13, N'In post-WWII America, a woman who is rebuilding her life in the suburbs, kidnaps her neighbor and seeks vengeance for the heinous war crimes she believes he committed against her.', N'English', CAST(N'2020-12-18' AS Date), N'USA', N'the-secrets-we-keep', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:14:58.050' AS DateTime), CAST(N'2021-09-04 22:14:58.050' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg8.jpg', N'/Uploads/images/MoviePhotos/movie-img1.jpg,/Uploads/images/MoviePhotos/movie-img6.jpg,/Uploads/images/MoviePhotos/movie-img2.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (9, N'Capone (2020)', N'/Uploads/images/Movies/movie9.jpg', 103, N'Chris Hemsworth, Natalie Portman, Tom Hiddleston, Stellan Skarsgård, Idris Elba, Christopher Eccleston, Adewale Akinnuoye-Agbaje', 16, N'The 47-year old Al Capone, after 10 years in prison, starts suffering from dementia and comes to be haunted by his violent past.', N'English', CAST(N'2020-05-12' AS Date), N'USA', N'capone-2020', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:16:41.427' AS DateTime), CAST(N'2021-09-04 22:16:41.427' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg9.jpg', N'/Uploads/images/MoviePhotos/movie-img2.jpg,/Uploads/images/MoviePhotos/movie-img4.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (10, N'Mukhosh', N'/Uploads/images/Movies/movie10.jpg', 117, N'Robert De Niro, Michael Douglas, Morgan Freeman, Kevin Kline, Mary Steenburgen, Jerry Ferrara, Romany Malco ...', 13, N'Kingshuk, a consulting criminologist at the Kolkata Police, finds himself in a ghastly case of repeated murders with only one common link. As his investigation unfolds, Kingshuk encounters a series of grotesque killings and unexpected turn of events as he sets out to investigate the mysterious trail.', N'English', CAST(N'2021-08-19' AS Date), N'USA', N'mukhosh', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:19:04.713' AS DateTime), CAST(N'2021-09-04 22:19:04.713' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg10.jpg', N'/Uploads/images/MoviePhotos/movie-img6.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (11, N'Proximity', N'/Uploads/images/Movies/movie11.jpg', 1119, N'Johnny Knoxville, Jackson Nicoll, Greg Harris, Georgina Cates, Kamber Hejlik, Jill Kill, Madison Davis ', 13, N'A young NASA JPL scientist is abducted by extraterrestrials but when no one believes his story he becomes obsessed with finding proof which leads him on a journey of discovery.', N'English', CAST(N'2020-05-15' AS Date), N'USA', N'proximity', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:20:54.417' AS DateTime), CAST(N'2021-09-04 22:20:54.417' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg11.jpg', N'/Uploads/images/MoviePhotos/movie-img3.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (12, N'The Killer', N'/Uploads/images/Movies/movie12.jpg', 154, N' Johnny Knoxville, Jackson Nicoll, Greg Harris, Georgina Cates, Kamber Hejlik, Jill Kill, Madison Davis ', 13, N'A series of murders takes place in Vizag and Aruku. Unknowingly, a couple travels to Aruku for a holiday. All of a sudden, the heroine goes missing. Will the hero finds his girlfriend? Will he catch the killer?', N'English', CAST(N'2021-09-03' AS Date), N'USA', N'the-killer', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:23:58.070' AS DateTime), CAST(N'2021-09-04 22:23:58.070' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg12.jpg', N'/Uploads/images/MoviePhotos/movie-img3.jpg,/Uploads/images/MoviePhotos/movie-img4.jpg')
INSERT [dbo].[Movie] ([IdMovie], [MoviveName], [Image], [Duration], [Actors], [AgeRestriction], [Description], [Language], [ReleaseDate], [Country], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate], [Status], [banner], [photos]) VALUES (13, N'Another Round', N'/Uploads/images/Movies/movie14.jpg', 117, N'Martin Freeman, Ian McKellen, Richard Armitage, Ken Stott, Graham McTavish,...', 18, N'Four friends, all high school teachers, test a theory that they will improve their lives by maintaining a constant level of alcohol in their blood.', N'English', CAST(N'2021-04-23' AS Date), N'USA', N'another-round', N'ttt', N'kkk', N'uuu', CAST(N'2021-09-04 22:27:34.957' AS DateTime), CAST(N'2021-09-04 22:27:34.957' AS DateTime), 1, N'/Uploads/images/BannerMovieDetail/movie-bg14.jpg', N'/Uploads/images/MoviePhotos/movie-img4.jpg,/Uploads/images/MoviePhotos/movie-img1.jpg')
SET IDENTITY_INSERT [dbo].[Movie] OFF
SET IDENTITY_INSERT [dbo].[Movie_type] ON 

INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (1, 1, 1)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (2, 1, 2)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (3, 2, 2)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (4, 6, 2)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (5, 18, 2)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (6, 1, 3)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (7, 2, 3)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (8, 11, 3)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (9, 18, 4)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (10, 18, 5)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (11, 1, 6)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (12, 2, 6)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (13, 18, 6)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (14, 5, 7)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (15, 8, 7)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (16, 8, 8)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (17, 18, 8)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (18, 6, 9)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (19, 8, 9)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (20, 18, 10)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (21, 8, 11)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (22, 18, 12)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (23, 5, 13)
INSERT [dbo].[Movie_type] ([id], [cate_movie_id], [movie_id]) VALUES (24, 8, 13)
SET IDENTITY_INSERT [dbo].[Movie_type] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (2, 2, 0, 483, 6, CAST(N'2021-09-04 22:49:23.203' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (3, 3, 0, 963, 6, CAST(N'2021-09-05 10:46:15.493' AS DateTime), 4, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (4, 4, 0, 483, 6, CAST(N'2021-09-05 14:54:14.777' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (5, 5, 0, 483, 6, CAST(N'2021-09-05 15:19:50.637' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (6, 6, 0, 723, 6, CAST(N'2021-09-05 15:27:23.773' AS DateTime), 3, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (7, 7, 0, 483, 6, CAST(N'2021-09-05 15:41:08.203' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (8, 8, 0, 483, 10, CAST(N'2021-09-08 10:25:08.703' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (9, 9, 0, 483, 9, CAST(N'2021-09-09 15:12:26.277' AS DateTime), 2, 1)
INSERT [dbo].[Order] ([OrderId], [CustomerId], [Discount], [Total], [Screening_Id], [OrderDate], [NumberOfSeats], [Status]) VALUES (10, 10, 0, 243, 9, CAST(N'2021-09-12 14:19:55.150' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Role_id], [Role_name], [CreatedDate], [ModifiedDate]) VALUES (1, N'Admin', CAST(N'2021-09-04 17:45:16.563' AS DateTime), CAST(N'2021-09-04 17:45:16.563' AS DateTime))
INSERT [dbo].[Roles] ([Role_id], [Role_name], [CreatedDate], [ModifiedDate]) VALUES (2, N'User', CAST(N'2021-09-04 17:45:16.563' AS DateTime), CAST(N'2021-09-04 17:45:16.563' AS DateTime))
INSERT [dbo].[Roles] ([Role_id], [Role_name], [CreatedDate], [ModifiedDate]) VALUES (3, N'Customer', CAST(N'2021-09-04 17:45:16.563' AS DateTime), CAST(N'2021-09-04 17:45:16.563' AS DateTime))
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([IdRoom], [RoomName], [TotalSeat], [CreatedDate], [ModifiedDate]) VALUES (1, N'1', 14, CAST(N'2021-09-04 17:50:02.170' AS DateTime), CAST(N'2021-09-04 17:53:18.220' AS DateTime))
INSERT [dbo].[Room] ([IdRoom], [RoomName], [TotalSeat], [CreatedDate], [ModifiedDate]) VALUES (2, N'2', 0, CAST(N'2021-09-04 17:50:04.307' AS DateTime), CAST(N'2021-09-04 17:50:04.307' AS DateTime))
INSERT [dbo].[Room] ([IdRoom], [RoomName], [TotalSeat], [CreatedDate], [ModifiedDate]) VALUES (3, N'3', 0, CAST(N'2021-09-04 17:50:05.567' AS DateTime), CAST(N'2021-09-04 17:50:05.567' AS DateTime))
INSERT [dbo].[Room] ([IdRoom], [RoomName], [TotalSeat], [CreatedDate], [ModifiedDate]) VALUES (4, N'4', 0, CAST(N'2021-09-04 17:50:06.673' AS DateTime), CAST(N'2021-09-04 17:50:06.673' AS DateTime))
INSERT [dbo].[Room] ([IdRoom], [RoomName], [TotalSeat], [CreatedDate], [ModifiedDate]) VALUES (5, N'5', 0, CAST(N'2021-09-04 17:50:07.920' AS DateTime), CAST(N'2021-09-04 17:50:07.920' AS DateTime))
INSERT [dbo].[Room] ([IdRoom], [RoomName], [TotalSeat], [CreatedDate], [ModifiedDate]) VALUES (7, N'6', 0, CAST(N'2021-09-04 17:50:16.117' AS DateTime), CAST(N'2021-09-04 17:50:16.117' AS DateTime))
SET IDENTITY_INSERT [dbo].[Room] OFF
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([Sale_id], [Shop_ShoId], [StartDate], [EndDate], [Sale], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (2, 8, CAST(N'2021-09-10 07:30:00.000' AS DateTime), CAST(N'2021-09-23 17:00:00.000' AS DateTime), 40, 1, N'Colombo has slowly grown to five retail furniture stores including Audrey Mall.', N'Colombo has slowly grown to five retail furniture stores including Audrey Mall.', N'colombo,Audrey Mall,sale', N'Colombo creates clothes for the modern women who like to look stylish.', CAST(N'2021-08-23 00:00:00.000' AS DateTime), CAST(N'2021-09-10 22:07:58.967' AS DateTime))
INSERT [dbo].[Sales] ([Sale_id], [Shop_ShoId], [StartDate], [EndDate], [Sale], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (6, 15, CAST(N'2021-09-22 08:00:00.000' AS DateTime), CAST(N'2021-09-30 15:00:00.000' AS DateTime), 25, 1, N'Bellerose had embellished beautiful journey in the personalized gifts industry.', N'Bellerose had embellished beautiful journey in the personalized gifts industry.', N'Bellerose  sale,audrey mall', N'Bellerose had embellished beautiful journey of over 10 years in the personalized gifts industry.', CAST(N'2021-08-28 10:27:36.730' AS DateTime), CAST(N'2021-09-10 22:08:36.597' AS DateTime))
INSERT [dbo].[Sales] ([Sale_id], [Shop_ShoId], [StartDate], [EndDate], [Sale], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (10, 12, CAST(N'2021-09-23 09:00:00.000' AS DateTime), CAST(N'2021-09-29 17:00:00.000' AS DateTime), 35, 1, N'Sam Records offers a wide variety of affordable music CDs', N'Sam Records offers a wide variety of affordable music CDs', N'Sam Records,audrey mall', N'Sam Records offers a wide variety of affordable music CDs available at our mall.', CAST(N'2021-08-28 22:24:05.370' AS DateTime), CAST(N'2021-09-10 22:09:42.497' AS DateTime))
INSERT [dbo].[Sales] ([Sale_id], [Shop_ShoId], [StartDate], [EndDate], [Sale], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (11, 11, CAST(N'2021-09-19 00:00:00.000' AS DateTime), CAST(N'2021-09-28 20:00:00.000' AS DateTime), 20, 1, N'Andrew Jones Studio is a jewelry store located at Audrey Mall.', N'Andrew Jones Studio is a jewelry store located at Audrey Mall.', N'Andrew Jones Studio,sale,audrey mall', N'Andrew Jones creates clothes for the modern women who like to look stylish.', CAST(N'2021-08-28 22:50:46.757' AS DateTime), CAST(N'2021-09-10 22:10:27.967' AS DateTime))
INSERT [dbo].[Sales] ([Sale_id], [Shop_ShoId], [StartDate], [EndDate], [Sale], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (12, 28, CAST(N'2021-09-20 07:30:00.000' AS DateTime), CAST(N'2021-09-29 19:10:00.000' AS DateTime), 70, 1, N'Original is one of the largest international fashion companies.', N'Original is one of the largest international fashion companies.', N'Original sale,audrey mall', N'Original is one of the largest international fashion companies.', CAST(N'2021-08-28 23:09:47.757' AS DateTime), CAST(N'2021-09-10 22:10:57.560' AS DateTime))
INSERT [dbo].[Sales] ([Sale_id], [Shop_ShoId], [StartDate], [EndDate], [Sale], [Status], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (16, 19, CAST(N'2021-09-25 08:00:00.000' AS DateTime), CAST(N'2021-09-29 17:00:00.000' AS DateTime), 50, 1, N'Authentic creates clothes for the modern women who like to look stylish.', N'Authentic creates clothes for the modern women who like to look stylish.', N'Authentic  sale,sale,audrey mall', N'Authentic creates clothes for the modern women who like to look stylish.', CAST(N'2021-09-10 22:13:31.827' AS DateTime), CAST(N'2021-09-10 22:13:31.827' AS DateTime))
SET IDENTITY_INSERT [dbo].[Sales] OFF
SET IDENTITY_INSERT [dbo].[Screening] ON 

INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (1, 1, 1, CAST(N'2021-09-30' AS Date), CAST(N'10:15:00' AS Time), 1, CAST(N'2021-09-04 22:32:41.807' AS DateTime), CAST(N'2021-09-08 10:37:30.200' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (2, 1, 1, CAST(N'2021-09-29' AS Date), CAST(N'16:10:00' AS Time), 1, CAST(N'2021-09-04 22:33:12.310' AS DateTime), CAST(N'2021-09-08 10:37:14.203' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (3, 1, 1, CAST(N'2021-09-28' AS Date), CAST(N'19:10:00' AS Time), 1, CAST(N'2021-09-04 22:33:29.637' AS DateTime), CAST(N'2021-09-08 10:39:47.730' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (4, 3, 1, CAST(N'2021-09-28' AS Date), CAST(N'14:00:00' AS Time), 1, CAST(N'2021-09-04 22:34:09.223' AS DateTime), CAST(N'2021-09-08 10:36:55.387' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (5, 2, 2, CAST(N'2021-09-25' AS Date), CAST(N'10:45:00' AS Time), 1, CAST(N'2021-09-04 22:35:04.347' AS DateTime), CAST(N'2021-09-08 10:34:11.390' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (6, 4, 2, CAST(N'2021-09-08' AS Date), CAST(N'17:10:00' AS Time), 1, CAST(N'2021-09-04 22:36:05.280' AS DateTime), CAST(N'2021-09-08 10:35:29.227' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (7, 5, 2, CAST(N'2021-09-25' AS Date), CAST(N'22:10:00' AS Time), 1, CAST(N'2021-09-04 22:36:24.760' AS DateTime), CAST(N'2021-09-08 10:33:48.227' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (8, 7, 3, CAST(N'2021-09-17' AS Date), CAST(N'13:20:00' AS Time), 1, CAST(N'2021-09-04 22:37:01.257' AS DateTime), CAST(N'2021-09-08 10:33:21.793' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (9, 3, 3, CAST(N'2021-09-15' AS Date), CAST(N'08:25:00' AS Time), 1, CAST(N'2021-09-04 22:37:21.553' AS DateTime), CAST(N'2021-09-08 10:32:07.217' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (10, 4, 4, CAST(N'2021-09-23' AS Date), CAST(N'13:55:00' AS Time), 1, CAST(N'2021-09-04 22:37:59.473' AS DateTime), CAST(N'2021-09-08 10:09:16.567' AS DateTime))
INSERT [dbo].[Screening] ([Id], [Room_IdRoom], [Movie_Id], [ScreeningDate], [StartTime], [Status], [CreatedDate], [ModifiedDate]) VALUES (11, 4, 4, CAST(N'2021-09-23' AS Date), CAST(N'23:05:00' AS Time), 1, CAST(N'2021-09-04 22:38:16.523' AS DateTime), CAST(N'2021-09-08 10:09:07.987' AS DateTime))
SET IDENTITY_INSERT [dbo].[Screening] OFF
SET IDENTITY_INSERT [dbo].[Screening_seat] ON 

INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (1, 343, 6, 2, 1, 240, CAST(N'2021-09-04 22:49:23.237' AS DateTime), CAST(N'2021-09-04 22:49:23.237' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (2, 344, 6, 2, 1, 240, CAST(N'2021-09-04 22:49:23.290' AS DateTime), CAST(N'2021-09-04 22:49:23.290' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (3, 356, 6, 3, 1, 240, CAST(N'2021-09-05 10:46:15.517' AS DateTime), CAST(N'2021-09-05 10:46:15.517' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (4, 357, 6, 3, 1, 240, CAST(N'2021-09-05 10:46:15.523' AS DateTime), CAST(N'2021-09-05 10:46:15.523' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (5, 358, 6, 3, 1, 240, CAST(N'2021-09-05 10:46:15.527' AS DateTime), CAST(N'2021-09-05 10:46:15.527' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (6, 359, 6, 3, 1, 240, CAST(N'2021-09-05 10:46:15.530' AS DateTime), CAST(N'2021-09-05 10:46:15.530' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (7, 337, 6, 4, 1, 240, CAST(N'2021-09-05 14:54:15.013' AS DateTime), CAST(N'2021-09-05 14:54:15.013' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (8, 338, 6, 4, 1, 240, CAST(N'2021-09-05 14:54:15.030' AS DateTime), CAST(N'2021-09-05 14:54:15.030' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (9, 347, 6, 5, 1, 240, CAST(N'2021-09-05 15:19:50.693' AS DateTime), CAST(N'2021-09-05 15:19:50.693' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (10, 348, 6, 5, 1, 240, CAST(N'2021-09-05 15:19:50.780' AS DateTime), CAST(N'2021-09-05 15:19:50.780' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (11, 366, 6, 6, 1, 240, CAST(N'2021-09-05 15:27:23.870' AS DateTime), CAST(N'2021-09-05 15:27:23.870' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (12, 367, 6, 6, 1, 240, CAST(N'2021-09-05 15:27:23.890' AS DateTime), CAST(N'2021-09-05 15:27:23.890' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (13, 368, 6, 6, 1, 240, CAST(N'2021-09-05 15:27:23.903' AS DateTime), CAST(N'2021-09-05 15:27:23.903' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (14, 328, 6, 7, 1, 240, CAST(N'2021-09-05 15:41:08.227' AS DateTime), CAST(N'2021-09-05 15:41:08.227' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (15, 329, 6, 7, 1, 240, CAST(N'2021-09-05 15:41:08.250' AS DateTime), CAST(N'2021-09-05 15:41:08.250' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (16, 343, 10, 8, 1, 240, CAST(N'2021-09-08 10:25:08.730' AS DateTime), CAST(N'2021-09-08 10:25:08.730' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (17, 344, 10, 8, 1, 240, CAST(N'2021-09-08 10:25:08.747' AS DateTime), CAST(N'2021-09-08 10:25:08.747' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (18, 245, 9, 9, 1, 240, CAST(N'2021-09-09 15:12:26.393' AS DateTime), CAST(N'2021-09-09 15:12:26.393' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (19, 246, 9, 9, 1, 240, CAST(N'2021-09-09 15:12:26.440' AS DateTime), CAST(N'2021-09-09 15:12:26.440' AS DateTime))
INSERT [dbo].[Screening_seat] ([ShowSeat_id], [Seat_IdSeat], [Screening_Id], [Order_OrderId], [Status], [Price], [CreatedDate], [ModifiedDate]) VALUES (20, 258, 9, 10, 1, 240, CAST(N'2021-09-12 14:19:55.200' AS DateTime), CAST(N'2021-09-12 14:19:55.200' AS DateTime))
SET IDENTITY_INSERT [dbo].[Screening_seat] OFF
SET IDENTITY_INSERT [dbo].[Seat] ON 

INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (1, N'G1', 240, 1, CAST(N'2021-09-04 17:51:35.727' AS DateTime), CAST(N'2021-09-04 17:51:35.730' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (2, N'G2', 240, 1, CAST(N'2021-09-04 17:51:43.390' AS DateTime), CAST(N'2021-09-04 17:51:43.390' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (3, N'G3', 240, 1, CAST(N'2021-09-04 17:51:53.640' AS DateTime), CAST(N'2021-09-04 17:51:53.640' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (4, N'G4', 240, 1, CAST(N'2021-09-04 17:51:59.270' AS DateTime), CAST(N'2021-09-04 17:51:59.270' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (5, N'G5', 240, 1, CAST(N'2021-09-04 17:52:05.437' AS DateTime), CAST(N'2021-09-04 17:52:05.437' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (6, N'G6', 240, 1, CAST(N'2021-09-04 17:52:13.053' AS DateTime), CAST(N'2021-09-04 17:52:13.053' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (7, N'G7', 240, 1, CAST(N'2021-09-04 17:52:23.243' AS DateTime), CAST(N'2021-09-04 17:52:23.243' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (8, N'G8', 240, 1, CAST(N'2021-09-04 17:52:36.963' AS DateTime), CAST(N'2021-09-04 17:52:36.963' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (9, N'G9', 240, 1, CAST(N'2021-09-04 17:52:43.327' AS DateTime), CAST(N'2021-09-04 17:52:43.327' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (10, N'G10', 240, 1, CAST(N'2021-09-04 17:52:53.300' AS DateTime), CAST(N'2021-09-04 17:52:53.300' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (11, N'G11', 240, 1, CAST(N'2021-09-04 17:53:00.153' AS DateTime), CAST(N'2021-09-04 17:53:00.153' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (12, N'G12', 240, 1, CAST(N'2021-09-04 17:53:06.750' AS DateTime), CAST(N'2021-09-04 17:53:06.750' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (13, N'G13', 240, 1, CAST(N'2021-09-04 17:53:12.433' AS DateTime), CAST(N'2021-09-04 17:53:12.433' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (14, N'G14', 240, 1, CAST(N'2021-09-04 17:53:18.207' AS DateTime), CAST(N'2021-09-04 17:53:18.207' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (15, N'F1', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (16, N'F2', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (17, N'F3', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (18, N'F4', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (19, N'F5', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (20, N'F6', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (21, N'F7', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (22, N'F8', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (23, N'F9', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (24, N'F10', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (25, N'F11', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (26, N'F12', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (27, N'F13', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (28, N'F14', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (29, N'E1', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (30, N'E2', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (31, N'E3', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (32, N'E4', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (33, N'E5', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (34, N'E6', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (35, N'E7', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (36, N'E8', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (37, N'E9', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (38, N'E10', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (39, N'E11', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (40, N'E12', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (41, N'E13', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (42, N'E14', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (43, N'D1', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (44, N'D2', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (45, N'D3', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (46, N'D4', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (47, N'D5', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (48, N'D6', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (49, N'D7', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (50, N'D8', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (51, N'D9', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (52, N'D10', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (53, N'D11', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (54, N'D12', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (55, N'D13', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (56, N'D14', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (57, N'C1', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (58, N'C2', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (59, N'C3', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (60, N'C4', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (61, N'C5', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (62, N'C6', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (63, N'C7', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (64, N'C8', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (65, N'C9', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (66, N'C10', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (67, N'C11', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (68, N'C12', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (69, N'C13', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (70, N'C14', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (71, N'B1', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (72, N'B2', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (73, N'B3', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (74, N'B4', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (75, N'B5', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (76, N'B6', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (77, N'B7', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (78, N'B8', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (79, N'B9', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (80, N'B10', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (81, N'B11', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (82, N'B12', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (83, N'B13', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (84, N'B14', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (85, N'A1', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (86, N'A2', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (87, N'A3', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (88, N'A4', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (89, N'A5', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (90, N'A6', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (91, N'A7', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (92, N'A8', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (93, N'A9', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (94, N'A10', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (95, N'A11', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (96, N'A12', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (97, N'A13', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (98, N'A14', 240, 1, CAST(N'2021-09-04 18:04:31.697' AS DateTime), CAST(N'2021-09-04 18:04:31.697' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (99, N'G1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
GO
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (100, N'G2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (101, N'G3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (102, N'G4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (103, N'G5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (104, N'G6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (105, N'G7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (106, N'G8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (107, N'G9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (108, N'G10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (109, N'G11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (110, N'G12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (111, N'G13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (112, N'G14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (113, N'F1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (114, N'F2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (115, N'F3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (116, N'F4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (117, N'F5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (118, N'F6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (119, N'F7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (120, N'F8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (121, N'F9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (122, N'F10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (123, N'F11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (124, N'F12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (125, N'F13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (126, N'F14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (127, N'E1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (128, N'E2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (129, N'E3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (130, N'E4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (131, N'E5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (132, N'E6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (133, N'E7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (134, N'E8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (135, N'E9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (136, N'E10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (137, N'E11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (138, N'E12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (139, N'E13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (140, N'E14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (141, N'D1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (142, N'D2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (143, N'D3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (144, N'D4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (145, N'D5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (146, N'D6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (147, N'D7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (148, N'D8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (149, N'D9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (150, N'D10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (151, N'D11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (152, N'D12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (153, N'D13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (154, N'D14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (155, N'C1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (156, N'C2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (157, N'C3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (158, N'C4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (159, N'C5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (160, N'C6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (161, N'C7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (162, N'C8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (163, N'C9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (164, N'C10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (165, N'C11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (166, N'C12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (167, N'C13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (168, N'C14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (169, N'B1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (170, N'B2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (171, N'B3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (172, N'B4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (173, N'B5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (174, N'B6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (175, N'B7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (176, N'B8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (177, N'B9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (178, N'B10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (179, N'B11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (180, N'B12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (181, N'B13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (182, N'B14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (183, N'A1', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (184, N'A2', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (185, N'A3', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (186, N'A4', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (187, N'A5', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (188, N'A6', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (189, N'A7', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (190, N'A8', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (191, N'A9', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (192, N'A10', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (193, N'A11', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (194, N'A12', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (195, N'A13', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (196, N'A14', 240, 2, CAST(N'2021-09-04 18:06:42.170' AS DateTime), CAST(N'2021-09-04 18:06:42.170' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (197, N'G1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (198, N'G2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (199, N'G3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
GO
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (200, N'G4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (201, N'G5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (202, N'G6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (203, N'G7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (204, N'G8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (205, N'G9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (206, N'G10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (207, N'G11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (208, N'G12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (209, N'G13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (210, N'G14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (211, N'F1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (212, N'F2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (213, N'F3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (214, N'F4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (215, N'F5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (216, N'F6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (217, N'F7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (218, N'F8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (219, N'F9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (220, N'F10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (221, N'F11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (222, N'F12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (223, N'F13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (224, N'F14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (225, N'E1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (226, N'E2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (227, N'E3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (228, N'E4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (229, N'E5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (230, N'E6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (231, N'E7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (232, N'E8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (233, N'E9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (234, N'E10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (235, N'E11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (236, N'E12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (237, N'E13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (238, N'E14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (239, N'D1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (240, N'D2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (241, N'D3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (242, N'D4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (243, N'D5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (244, N'D6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (245, N'D7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (246, N'D8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (247, N'D9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (248, N'D10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (249, N'D11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (250, N'D12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (251, N'D13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (252, N'D14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (253, N'C1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (254, N'C2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (255, N'C3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (256, N'C4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (257, N'C5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (258, N'C6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (259, N'C7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (260, N'C8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (261, N'C9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (262, N'C10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (263, N'C11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (264, N'C12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (265, N'C13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (266, N'C14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (267, N'B1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (268, N'B2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (269, N'B3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (270, N'B4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (271, N'B5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (272, N'B6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (273, N'B7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (274, N'B8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (275, N'B9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (276, N'B10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (277, N'B11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (278, N'B12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (279, N'B13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (280, N'B14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (281, N'A1', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (282, N'A2', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (283, N'A3', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (284, N'A4', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (285, N'A5', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (286, N'A6', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (287, N'A7', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (288, N'A8', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (289, N'A9', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (290, N'A10', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (291, N'A11', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (292, N'A12', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (293, N'A13', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (294, N'A14', 240, 3, CAST(N'2021-09-04 18:07:02.903' AS DateTime), CAST(N'2021-09-04 18:07:02.903' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (295, N'G1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (296, N'G2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (297, N'G3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (298, N'G4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (299, N'G5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
GO
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (300, N'G6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (301, N'G7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (302, N'G8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (303, N'G9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (304, N'G10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (305, N'G11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (306, N'G12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (307, N'G13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (308, N'G14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (309, N'F1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (310, N'F2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (311, N'F3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (312, N'F4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (313, N'F5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (314, N'F6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (315, N'F7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (316, N'F8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (317, N'F9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (318, N'F10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (319, N'F11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (320, N'F12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (321, N'F13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (322, N'F14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (323, N'E1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (324, N'E2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (325, N'E3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (326, N'E4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (327, N'E5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (328, N'E6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (329, N'E7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (330, N'E8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (331, N'E9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (332, N'E10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (333, N'E11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (334, N'E12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (335, N'E13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (336, N'E14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (337, N'D1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (338, N'D2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (339, N'D3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (340, N'D4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (341, N'D5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (342, N'D6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (343, N'D7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (344, N'D8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (345, N'D9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (346, N'D10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (347, N'D11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (348, N'D12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (349, N'D13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (350, N'D14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (351, N'C1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (352, N'C2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (353, N'C3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (354, N'C4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (355, N'C5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (356, N'C6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (357, N'C7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (358, N'C8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (359, N'C9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (360, N'C10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (361, N'C11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (362, N'C12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (363, N'C13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (364, N'C14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (365, N'B1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (366, N'B2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (367, N'B3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (368, N'B4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (369, N'B5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (370, N'B6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (371, N'B7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (372, N'B8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (373, N'B9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (374, N'B10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (375, N'B11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (376, N'B12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (377, N'B13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (378, N'B14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (379, N'A1', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (380, N'A2', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (381, N'A3', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (382, N'A4', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (383, N'A5', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (384, N'A6', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (385, N'A7', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (386, N'A8', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (387, N'A9', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (388, N'A10', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (389, N'A11', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (390, N'A12', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (391, N'A13', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (392, N'A14', 240, 4, CAST(N'2021-09-04 18:07:23.463' AS DateTime), CAST(N'2021-09-04 18:07:23.463' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (393, N'G1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (394, N'G2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (395, N'G3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (396, N'G4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (397, N'G5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (398, N'G6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (399, N'G7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
GO
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (400, N'G8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (401, N'G9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (402, N'G10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (403, N'G11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (404, N'G12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (405, N'G13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (406, N'G14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (407, N'F1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (408, N'F2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (409, N'F3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (410, N'F4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (411, N'F5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (412, N'F6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (413, N'F7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (414, N'F8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (415, N'F9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (416, N'F10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (417, N'F11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (418, N'F12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (419, N'F13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (420, N'F14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (421, N'E1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (422, N'E2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (423, N'E3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (424, N'E4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (425, N'E5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (426, N'E6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (427, N'E7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (428, N'E8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (429, N'E9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (430, N'E10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (431, N'E11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (432, N'E12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (433, N'E13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (434, N'E14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (435, N'D1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (436, N'D2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (437, N'D3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (438, N'D4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (439, N'D5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (440, N'D6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (441, N'D7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (442, N'D8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (443, N'D9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (444, N'D10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (445, N'D11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (446, N'D12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (447, N'D13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (448, N'D14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (449, N'C1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (450, N'C2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (451, N'C3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (452, N'C4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (453, N'C5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (454, N'C6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (455, N'C7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (456, N'C8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (457, N'C9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (458, N'C10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (459, N'C11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (460, N'C12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (461, N'C13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (462, N'C14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (463, N'B1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (464, N'B2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (465, N'B3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (466, N'B4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (467, N'B5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (468, N'B6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (469, N'B7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (470, N'B8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (471, N'B9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (472, N'B10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (473, N'B11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (474, N'B12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (475, N'B13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (476, N'B14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (477, N'A1', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (478, N'A2', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (479, N'A3', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (480, N'A4', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (481, N'A5', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (482, N'A6', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (483, N'A7', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (484, N'A8', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (485, N'A9', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (486, N'A10', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (487, N'A11', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (488, N'A12', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (489, N'A13', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (490, N'A14', 240, 5, CAST(N'2021-09-04 18:07:42.123' AS DateTime), CAST(N'2021-09-04 18:07:42.123' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (491, N'G1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (492, N'G2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (493, N'G3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (494, N'G4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (495, N'G5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (496, N'G6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (497, N'G7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (498, N'G8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (499, N'G9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
GO
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (500, N'G10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (501, N'G11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (502, N'G12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (503, N'G13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (504, N'G14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (505, N'F1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (506, N'F2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (507, N'F3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (508, N'F4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (509, N'F5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (510, N'F6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (511, N'F7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (512, N'F8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (513, N'F9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (514, N'F10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (515, N'F11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (516, N'F12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (517, N'F13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (518, N'F14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (519, N'E1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (520, N'E2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (521, N'E3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (522, N'E4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (523, N'E5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (524, N'E6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (525, N'E7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (526, N'E8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (527, N'E9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (528, N'E10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (529, N'E11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (530, N'E12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (531, N'E13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (532, N'E14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (533, N'D1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (534, N'D2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (535, N'D3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (536, N'D4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (537, N'D5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (538, N'D6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (539, N'D7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (540, N'D8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (541, N'D9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (542, N'D10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (543, N'D11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (544, N'D12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (545, N'D13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (546, N'D14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (547, N'C1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (548, N'C2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (549, N'C3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (550, N'C4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (551, N'C5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (552, N'C6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (553, N'C7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (554, N'C8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (555, N'C9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (556, N'C10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (557, N'C11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (558, N'C12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (559, N'C13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (560, N'C14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (561, N'B1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (562, N'B2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (563, N'B3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (564, N'B4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (565, N'B5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (566, N'B6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (567, N'B7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (568, N'B8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (569, N'B9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (570, N'B10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (571, N'B11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (572, N'B12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (573, N'B13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (574, N'B14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (575, N'A1', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (576, N'A2', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (577, N'A3', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (578, N'A4', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (579, N'A5', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (580, N'A6', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (581, N'A7', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (582, N'A8', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (583, N'A9', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (584, N'A10', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (585, N'A11', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (586, N'A12', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (587, N'A13', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
INSERT [dbo].[Seat] ([IdSeat], [SeatName], [price], [IdRoom], [CreatedDate], [ModifiedDate]) VALUES (588, N'A14', 240, 7, CAST(N'2021-09-04 18:08:15.900' AS DateTime), CAST(N'2021-09-04 18:08:15.900' AS DateTime))
SET IDENTITY_INSERT [dbo].[Seat] OFF
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (1, N'Asian Cuisine', 1, CAST(N'2021-09-06 15:09:53.000' AS DateTime), CAST(N'2021-09-06 15:09:53.000' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (7, N'Clothes ', 9, CAST(N'2021-08-28 21:18:12.260' AS DateTime), CAST(N'2021-08-28 21:18:12.260' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (8, N'Jewelry ', 9, CAST(N'2021-08-28 21:18:24.193' AS DateTime), CAST(N'2021-08-28 21:18:24.193' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (9, N'Italian Food', 1, CAST(N'2021-08-28 21:18:39.050' AS DateTime), CAST(N'2021-08-28 21:22:01.817' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (13, N'Gifts', 9, CAST(N'2021-09-04 14:51:31.520' AS DateTime), CAST(N'2021-09-04 14:51:31.520' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (14, N'Accessories', 9, CAST(N'2021-09-04 14:52:03.597' AS DateTime), CAST(N'2021-09-04 14:52:03.597' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (15, N'Grocery', 9, CAST(N'2021-09-04 14:52:28.837' AS DateTime), CAST(N'2021-09-04 14:52:28.837' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (16, N'Other', 9, CAST(N'2021-09-04 14:53:50.440' AS DateTime), CAST(N'2021-09-04 14:53:50.440' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (18, N'Cinema', 2, CAST(N'2021-09-04 15:11:43.977' AS DateTime), CAST(N'2021-09-04 15:11:43.977' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (19, N'Bowling Club', 2, CAST(N'2021-09-04 15:14:11.580' AS DateTime), CAST(N'2021-09-04 15:14:11.580' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (20, N'Playground for Kids', 2, CAST(N'2021-09-04 15:14:33.657' AS DateTime), CAST(N'2021-09-04 15:14:33.657' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (21, N'Roller Skating', 2, CAST(N'2021-09-04 15:14:52.803' AS DateTime), CAST(N'2021-09-04 15:14:52.803' AS DateTime))
INSERT [dbo].[Service] ([ServiceId], [ServiceName], [Service_area], [CreatedDate], [ModifiedDate]) VALUES (22, N'Parking at Audrey Mall', 3, CAST(N'2021-09-04 15:15:25.490' AS DateTime), CAST(N'2021-09-04 15:15:25.490' AS DateTime))
SET IDENTITY_INSERT [dbo].[Service] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (8, N'Colombo', N'/Uploads/images/Shops/product-06-360x270.jpg', 15, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-06-81x79.png', N'colombo', N'demo', N'demolink', N'Colombo has slowly grown to five retail furniture stores including Audrey Mall.', CAST(N'2021-08-26 14:58:45.820' AS DateTime), CAST(N'2021-09-09 16:09:38.977' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (11, N'Andrew Jones', N'/Uploads/images/Shops/product-02-360x270.jpg', 8, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'phamduyentb@gmail.com', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-02-160x100.png', N'andrew-jones', N'demo', N'demolink', N'Andrew Jones Studio is a jewelry store located at Audrey Mall, in San Diego.', CAST(N'2021-08-26 20:48:41.487' AS DateTime), CAST(N'2021-09-09 16:09:57.987' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (12, N'Sam Records', N'/Uploads/images/Shops/product-03-360x270.jpg', 14, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-03-93x71.png', N'sam-records', N'demo', N'demolink', N'Sam Records offers a wide variety of affordable music CDs available at our mall.', CAST(N'2021-08-26 20:49:25.870' AS DateTime), CAST(N'2021-09-09 16:10:18.893' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (15, N'Bellerose', N'/Uploads/images/Shops/product-05-360x270.jpg', 13, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-05-120x100.png', N'bellerose', N'demo', N'demolink', N'Bellerose had embellished beautiful journey of over 10 years in the personalized gifts industry.', CAST(N'2021-08-27 08:37:44.240' AS DateTime), CAST(N'2021-09-09 16:36:13.660' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (19, N'Authentic', N'/Uploads/images/Shops/product-04-360x270.jpg', 7, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-04-111x100.png', N'authentic', N'demolink', N'gathentic', N'Authentic creates clothes for the modern women who like to look stylish.', CAST(N'2021-09-02 09:03:35.790' AS DateTime), CAST(N'2021-09-09 16:36:04.940' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (21, N'Wilsons', N'/Uploads/images/Shops/product-07-360x270.jpg', 7, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-07-158x100.png', N'wilsons', N'demolink', N'demolink', N'Wilsons is the leading premium lingerie brand in California.', CAST(N'2021-09-04 16:06:37.040' AS DateTime), CAST(N'2021-09-09 16:10:58.510' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (22, N'Lakewoods', N'/Uploads/images/Shops/product-08-360x270.jpg', 16, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-08-134x100.png', N'lakewoods', N'demolink', N'demolink', N'Over the past 20+ years, Lakewoods has provided skateboarders with top-notch apparel.', CAST(N'2021-09-04 16:08:15.550' AS DateTime), CAST(N'2021-09-09 16:11:08.703' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (23, N'Clematis', N'/Uploads/images/Shops/product-12-295x260.jpg', 1, N'The atmosphere of real Italy rules the mood at Rosalia, the best Italian restaurant in the area. here you can experience not only the best recipes of typical Italian dishes but also the mood of many things: interior, music, waitresses, and just Italian air! Rosalia’s team members put their hearts and souls into every dish they cook to help you feel the vibes of Italy.', N'Second Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-12-144x110.png', N'clematis', N'demolink', N'demolink', N'The atmosphere of real Italy rules the mood at Clematis, the best Italian restaurant in the area.', CAST(N'2021-09-04 16:13:41.810' AS DateTime), CAST(N'2021-09-10 14:20:03.977' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (24, N'Celsie Crete', N'/Uploads/images/Shops/product-13-295x260.jpg', 9, N'The atmosphere of real Italy rules the mood at Rosalia, the best Italian restaurant in the area. here you can experience not only the best recipes of typical Italian dishes but also the mood of many things: interior, music, waitresses, and just Italian air! Rosalia’s team members put their hearts and souls into every dish they cook to help you feel the vibes of Italy.', N'Second Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-13-103x119.png', N'celsie-crete', N'demolink', N'demolink', N'The atmosphere of real Italy rules the mood at Celsie Crete, the best Italian restaurant in the area.', CAST(N'2021-09-04 16:17:36.230' AS DateTime), CAST(N'2021-09-10 14:19:56.857' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (25, N'CusCute', N'/Uploads/images/Shops/product-14-295x260.jpg', 1, N'The atmosphere of real Italy rules the mood at Rosalia, the best Italian restaurant in the area. here you can experience not only the best recipes of typical Italian dishes but also the mood of many things: interior, music, waitresses, and just Italian air! Rosalia’s team members put their hearts and souls into every dish they cook to help you feel the vibes of Italy.', N'Second Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-14-110x111.png', N'cuscute', N'demolink', N'demolink', N'The atmosphere of real Italy rules the mood at CusCute, the best Italian restaurant in the area.', CAST(N'2021-09-04 16:19:37.840' AS DateTime), CAST(N'2021-09-10 14:19:39.773' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (26, N'Galega', N'/Uploads/images/Shops/product-11-295x260.jpg', 9, N'The atmosphere of real Italy rules the mood at Rosalia, the best Italian restaurant in the area. here you can experience not only the best recipes of typical Italian dishes but also the mood of many things: interior, music, waitresses, and just Italian air! Rosalia’s team members put their hearts and souls into every dish they cook to help you feel the vibes of Italy.', N'Second Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-11-160x104.png', N'galega', N'demolink', N'demolink', N'The atmosphere of real Italy rules the mood at Galega, the best Italian restaurant in the area.', CAST(N'2021-09-04 16:21:29.250' AS DateTime), CAST(N'2021-09-09 21:35:50.020' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (27, N'Gazon', N'/Uploads/images/Shops/product-10-295x260.jpg', 1, N'The atmosphere of real Italy rules the mood at Rosalia, the best Italian restaurant in the area. here you can experience not only the best recipes of typical Italian dishes but also the mood of many things: interior, music, waitresses, and just Italian air! Rosalia’s team members put their hearts and souls into every dish they cook to help you feel the vibes of Italy.', N'Second Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-10-81x109.png', N'gazon', N'demolink', N'demolink', N'The atmosphere of real Italy rules the mood at Gazon, the best Italian restaurant in the area.', CAST(N'2021-09-04 16:23:19.227' AS DateTime), CAST(N'2021-09-09 21:35:42.693' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (28, N'Original', N'/Uploads/images/Shops/product-01-360x270.jpg', 7, N'Blossom offers everything you need to live the laid-back California lifestyle in a Golden State of Mind. With roots in action sports, fashion, art and music, this shop serves up the latest styles for men and women from top brands including Bullhead, Volcom, Billabong, Hurley, Roxy, Diamond Supply Co., Nike SB, RVCA, Vans, Modern Amusement, Neff, Young & Reckless, Riot Society, Quiksilver, Crooks and Castles, Rook, and more!', N'Third Floor', N'1-800-1234-567', 1, N'mail@demolink.org', N'demolink.org', N'/Uploads/images/ShopLogos/product-logo-01-93x85.png', N'original', N'demolink', N'demolink', N'Original is one of the largest international fashion companies.', CAST(N'2021-09-04 21:18:51.720' AS DateTime), CAST(N'2021-09-09 16:11:17.043' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (32, N'Cinema', N'/Uploads/images/Shops/careers-01-960x580.jpg', 18, N'Audrey Cinema opened at San Diego in March 2013 to provide movie-goers with a luxury cinema experience in the heart of our city. We can boast seven VIP screens, large VIP seats, state-of-the-art projection and surround sound systems, and a new gourmet menu. What more could any cinema lover wish for?', N'Third Floor', N'1-800-6547-958', 1, N'audreymall@gmail.com', N'example.com', N'/Uploads/images/banner/logo-202x56.png', N'cinema', N'Audrey Entertainment', N'Audrey Mall,Entertainment', N'Audrey Mail is a four-story shopping and entertainment center located in the heart of downtown San Diego in the thriving Yerba Buena Neighborhood. Shop at the City Target on the second level and visit a 16-screen AMC Theater with the largest IMAX in North America.', CAST(N'2021-09-10 14:45:15.030' AS DateTime), CAST(N'2021-09-10 15:08:05.363' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (33, N'Bowling Club', N'/Uploads/images/Shops/careers-02-960x580.jpg', 19, N'Audrey Bowling Club has six regulation size bowling lanes, outfitted with automatic scoring and ball speed technology. We base our pricing on 6 people per lane and charge by hour. We are a 21+ facility, with the exception of our Family Bowl hours.', N'Third Floor', N'1-800-6547-958', 1, N'audreymall@gmail.com', N'example.com', N'/Uploads/images/banner/logo-202x56.png', N'bowling-club', N'Audrey Entertainment', N'Audrey Mall,Entertainment', N'Audrey Mail is a four-story shopping and entertainment center located in the heart of downtown San Diego in the thriving Yerba Buena Neighborhood. Shop at the City Target on the second level and visit a 16-screen AMC Theater with the largest IMAX in North America.', CAST(N'2021-09-10 14:47:33.710' AS DateTime), CAST(N'2021-09-10 15:07:06.210' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (34, N'Playground for Kids', N'/Uploads/images/Shops/careers-03-960x580.jpg', 20, N'The Playground For Kids was created by local parents with active children. As parents, we were always trying to find local places to take our children to play where we weren’t handing out quarters the whole time, we were running out of options, so we created The Audrey Playground For Kids”', N'Third Floor', N'1-800-6547-958', 1, N'audreymall@gmail.com', N'example.com', N'/Uploads/images/banner/logo-202x56.png', N'playground-for-kids', N'Audrey Entertainment', N'Audrey Mall,Entertainment', N'Audrey Mail is a four-story shopping and entertainment center located in the heart of downtown San Diego in the thriving Yerba Buena Neighborhood. Shop at the City Target on the second level and visit a 16-screen AMC Theater with the largest IMAX in North America.', CAST(N'2021-09-10 14:49:36.970' AS DateTime), CAST(N'2021-09-10 14:49:36.970' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (35, N'Roller Skating', N'/Uploads/images/Shops/careers-04-960x580.jpg', 21, N'Roller skating is old time fun that never goes out of fashion! One of the largest roller skating rinks in America, Audrey Roller Skating Rink offers the best skating experience you''ll find anywhere. Whether you''re lacing up your skates for the first time or you are one of our regular roller enthusiasts, we offer a wide range of sessions, classes, and programs for every skater!', N'Second Floor', N'1-800-6547-958', 1, N'audreymall@gmail.com', N'example.com', N'/Uploads/images/banner/logo-202x56.png', N'roller-skating', N'Audrey Entertainment', N'Audrey Mall,Entertainment', N'Audrey Mail is a four-story shopping and entertainment center located in the heart of downtown San Diego in the thriving Yerba Buena Neighborhood. Shop at the City Target on the second level and visit a 16-screen AMC Theater with the largest IMAX in North America.', CAST(N'2021-09-10 14:50:31.407' AS DateTime), CAST(N'2021-09-10 14:50:31.407' AS DateTime))
INSERT [dbo].[Shop] ([ShoId], [ShopName], [Photo], [ServiceId], [Description], [Address], [Phone], [Status], [Email], [Url_web], [Logo], [slug], [Meta_title], [Meta_keyword], [Meta_description], [CreatedDate], [ModifiedDate]) VALUES (36, N'Parking at Audrey Mall', N'/Uploads/images/Shops/parking-01-960x498.jpg', 22, N'We currently offer parking at our North and South Garages for extended visits and short term outdoor parking. If you would like more information about parking rates, please call the Parking office at 1-800-3214-657.', N'Zero Floor', N'1-800-6547-958', 1, N'audreymall@gmail.com', N'example.com', N'/Uploads/images/banner/logo-202x56.png', N'parking-at-audrey-mall', N'Audrey Parking', N'Audrey Mall,parking', N'Audrey Mail is a four-story shopping and entertainment center located in the heart of downtown San Diego in the thriving Yerba Buena Neighborhood. Shop at the City Target on the second level and visit a 16-screen AMC Theater with the largest IMAX in North America.', CAST(N'2021-09-10 15:24:41.027' AS DateTime), CAST(N'2021-09-10 15:24:41.027' AS DateTime))
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[Shop_Product] ON 

INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (5, N'Men''s Baseball Camp Jackets', N'/Uploads/images/ShopProduct/product-15-280x280.jpg', 11, CAST(N'2021-08-30 10:19:17.530' AS DateTime), CAST(N'2021-09-04 21:50:16.887' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (20, N'Men''s Baseball Camp Jacket', N'/Uploads/images/ShopProduct/product-15-280x280.jpg', 19, CAST(N'2021-09-02 20:56:32.437' AS DateTime), CAST(N'2021-09-04 16:46:31.617' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (21, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 19, CAST(N'2021-09-03 09:56:11.240' AS DateTime), CAST(N'2021-09-04 16:47:39.183' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (27, N'Pizza', N'/Uploads/images/ShopProduct/product-10-295x260.jpg', 27, CAST(N'2021-09-04 16:36:37.537' AS DateTime), CAST(N'2021-09-04 16:36:37.537' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (28, N'Eag Tomato', N'/Uploads/images/ShopProduct/portfolio-29-480x320.jpg', 27, CAST(N'2021-09-04 16:39:16.780' AS DateTime), CAST(N'2021-09-04 16:39:16.780' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (29, N'Paketi Noodles', N'/Uploads/images/ShopProduct/portfolio-28-635x800_original.jpg', 27, CAST(N'2021-09-04 16:41:58.167' AS DateTime), CAST(N'2021-09-04 16:41:58.167' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (30, N'Salad', N'/Uploads/images/ShopProduct/portfolio-30-1170x800_original.jpg', 27, CAST(N'2021-09-04 16:42:43.373' AS DateTime), CAST(N'2021-09-04 16:42:43.373' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (31, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 19, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (32, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 19, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (33, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 19, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (34, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 11, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (35, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 11, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (36, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 11, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (37, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 11, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (41, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 15, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (42, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 15, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (43, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 15, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (44, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 15, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (45, N'Men''s Baseball Camp Jacket', N'/Uploads/images/ShopProduct/product-15-280x280.jpg', 15, CAST(N'2021-09-04 21:54:59.147' AS DateTime), CAST(N'2021-09-04 21:54:59.147' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (46, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 12, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (47, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 12, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (48, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 12, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (49, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 12, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (50, N'Men''s Baseball Camp Jacket', N'/Uploads/images/ShopProduct/product-15-280x280.jpg', 12, CAST(N'2021-09-04 21:56:39.930' AS DateTime), CAST(N'2021-09-04 21:56:39.930' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (51, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 28, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (52, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 28, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (53, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 28, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (54, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 28, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (56, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 21, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (57, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 21, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (58, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 21, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (59, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 21, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (61, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 22, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (62, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 22, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (63, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 22, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (64, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 22, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (66, N'Crosby suit jacket in Italian chino', N'/Uploads/images/ShopProduct/product-16-280x280.jpg', 8, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (67, N'Ludlow shawl-collar tuxedo jacket', N'/Uploads/images/ShopProduct/product-17-280x280.jpg', 8, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (68, N'Ludlow suit jacket in Italian cashmere', N'/Uploads/images/ShopProduct/product-18-280x280.jpg', 8, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (69, N'Ludlow tuxedo jacket in Italian wool', N'/Uploads/images/ShopProduct/product-19-280x280.jpg', 8, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (71, N'Pizza', N'/Uploads/images/ShopProduct/product-10-295x260.jpg', 26, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (72, N'Eag Tomato', N'/Uploads/images/ShopProduct/portfolio-29-480x320.jpg', 26, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (73, N'Paketi Noodles', N'/Uploads/images/ShopProduct/portfolio-28-635x800_original.jpg', 26, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (74, N'Salad', N'/Uploads/images/ShopProduct/portfolio-30-1170x800_original.jpg', 26, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (75, N'Pizza', N'/Uploads/images/ShopProduct/product-10-295x260.jpg', 25, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (76, N'Eag Tomato', N'/Uploads/images/ShopProduct/portfolio-29-480x320.jpg', 25, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (77, N'Paketi Noodles', N'/Uploads/images/ShopProduct/portfolio-28-635x800_original.jpg', 25, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (78, N'Salad', N'/Uploads/images/ShopProduct/portfolio-30-1170x800_original.jpg', 25, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (79, N'Pizza', N'/Uploads/images/ShopProduct/product-10-295x260.jpg', 24, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (80, N'Eag Tomato', N'/Uploads/images/ShopProduct/portfolio-29-480x320.jpg', 24, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (81, N'Paketi Noodles', N'/Uploads/images/ShopProduct/portfolio-28-635x800_original.jpg', 24, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (82, N'Salad', N'/Uploads/images/ShopProduct/portfolio-30-1170x800_original.jpg', 24, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (83, N'Pizza', N'/Uploads/images/ShopProduct/product-10-295x260.jpg', 23, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (84, N'Eag Tomato', N'/Uploads/images/ShopProduct/portfolio-29-480x320.jpg', 23, CAST(N'2021-09-04 16:48:16.060' AS DateTime), CAST(N'2021-09-04 16:48:16.060' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (85, N'Paketi Noodles', N'/Uploads/images/ShopProduct/portfolio-28-635x800_original.jpg', 23, CAST(N'2021-09-04 16:48:50.393' AS DateTime), CAST(N'2021-09-04 16:48:50.393' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (86, N'Salad', N'/Uploads/images/ShopProduct/portfolio-30-1170x800_original.jpg', 23, CAST(N'2021-09-04 16:49:29.050' AS DateTime), CAST(N'2021-09-04 16:49:29.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (96, N'Food1', N'/Uploads/images/Shops/food1.jpg', 27, CAST(N'2021-09-10 10:53:26.197' AS DateTime), CAST(N'2021-09-10 10:53:26.197' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (97, N'Break', N'/Uploads/images/Shops/food2.jpg', 27, CAST(N'2021-09-10 10:53:53.673' AS DateTime), CAST(N'2021-09-10 10:53:53.673' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (98, N'Food2', N'/Uploads/images/Shops/food3.jpg', 27, CAST(N'2021-09-10 10:54:07.480' AS DateTime), CAST(N'2021-09-10 10:54:07.480' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (99, N'Food3', N'/Uploads/images/Shops/food4.jpg', 27, CAST(N'2021-09-10 10:54:23.780' AS DateTime), CAST(N'2021-09-10 10:54:23.780' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (100, N'Food1', N'/Uploads/images/Shops/food1.jpg', 26, CAST(N'2021-09-10 14:11:46.047' AS DateTime), CAST(N'2021-09-10 14:11:46.047' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (101, N'Food2', N'/Uploads/images/Shops/food2.jpg', 26, CAST(N'2021-09-10 14:11:55.860' AS DateTime), CAST(N'2021-09-10 14:11:55.860' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (102, N'Food3', N'/Uploads/images/Shops/food3.jpg', 26, CAST(N'2021-09-10 14:12:08.780' AS DateTime), CAST(N'2021-09-10 14:12:08.780' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (103, N'Food4', N'/Uploads/images/Shops/food4.jpg', 26, CAST(N'2021-09-10 14:12:19.737' AS DateTime), CAST(N'2021-09-10 14:12:19.737' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (104, N'Food1', N'/Uploads/images/Shops/food1.jpg', 25, CAST(N'2021-09-10 14:12:55.120' AS DateTime), CAST(N'2021-09-10 14:12:55.120' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (105, N'Food2', N'/Uploads/images/Shops/food2.jpg', 25, CAST(N'2021-09-10 14:13:05.027' AS DateTime), CAST(N'2021-09-10 14:13:05.027' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (106, N'Food3', N'/Uploads/images/Shops/food3.jpg', 25, CAST(N'2021-09-10 14:13:12.477' AS DateTime), CAST(N'2021-09-10 14:13:12.477' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (107, N'Food4', N'/Uploads/images/Shops/food4.jpg', 25, CAST(N'2021-09-10 14:13:21.533' AS DateTime), CAST(N'2021-09-10 14:13:21.533' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (108, N'Food1', N'/Uploads/images/Shops/food1.jpg', 24, CAST(N'2021-09-10 14:13:53.117' AS DateTime), CAST(N'2021-09-10 14:13:53.117' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (109, N'Food2', N'/Uploads/images/Shops/food2.jpg', 24, CAST(N'2021-09-10 14:14:02.560' AS DateTime), CAST(N'2021-09-10 14:14:02.560' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (110, N'Food3', N'/Uploads/images/Shops/food3.jpg', 24, CAST(N'2021-09-10 14:14:10.133' AS DateTime), CAST(N'2021-09-10 14:14:10.133' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (111, N'Food4', N'/Uploads/images/Shops/food4.jpg', 24, CAST(N'2021-09-10 14:14:16.210' AS DateTime), CAST(N'2021-09-10 14:14:16.210' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (112, N'Food1', N'/Uploads/images/Shops/food1.jpg', 23, CAST(N'2021-09-10 14:14:31.000' AS DateTime), CAST(N'2021-09-10 14:14:31.000' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (113, N'Food2', N'/Uploads/images/Shops/food2.jpg', 23, CAST(N'2021-09-10 14:14:43.050' AS DateTime), CAST(N'2021-09-10 14:14:43.050' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (114, N'Food3', N'/Uploads/images/Shops/food3.jpg', 23, CAST(N'2021-09-10 14:14:49.777' AS DateTime), CAST(N'2021-09-10 14:14:49.777' AS DateTime), 1)
INSERT [dbo].[Shop_Product] ([Pro_Id], [Pro_name], [Images], [Shop_ShoId], [CreatedDate], [ModifiedDate], [Status]) VALUES (115, N'Food4', N'/Uploads/images/Shops/food4.jpg', 23, CAST(N'2021-09-10 14:14:56.060' AS DateTime), CAST(N'2021-09-10 14:14:56.060' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Shop_Product] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Admin__C9F2845690554CFE]    Script Date: 13/9/2021 3:01:18 PM ******/
ALTER TABLE [dbo].[Admin] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Category__737584F6B06D2BCA]    Script Date: 13/9/2021 3:01:18 PM ******/
ALTER TABLE [dbo].[Category_Movie] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__Room__6B500B550A9B8D62]    Script Date: 13/9/2021 3:01:18 PM ******/
ALTER TABLE [dbo].[Room] ADD UNIQUE NONCLUSTERED 
(
	[RoomName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdminRoles]  WITH CHECK ADD  CONSTRAINT [AdminRoles_Admin] FOREIGN KEY([Admin_id])
REFERENCES [dbo].[Admin] ([Id])
GO
ALTER TABLE [dbo].[AdminRoles] CHECK CONSTRAINT [AdminRoles_Admin]
GO
ALTER TABLE [dbo].[AdminRoles]  WITH CHECK ADD  CONSTRAINT [AdminRoles_Roles] FOREIGN KEY([Role_id])
REFERENCES [dbo].[Roles] ([Role_id])
GO
ALTER TABLE [dbo].[AdminRoles] CHECK CONSTRAINT [AdminRoles_Roles]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [Blog_Category_blog] FOREIGN KEY([Category_blog_id])
REFERENCES [dbo].[Category_blog] ([Cate_blog_id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [Blog_Category_blog]
GO
ALTER TABLE [dbo].[Events]  WITH CHECK ADD  CONSTRAINT [Events_Shop] FOREIGN KEY([Shop_ShoId])
REFERENCES [dbo].[Shop] ([ShoId])
GO
ALTER TABLE [dbo].[Events] CHECK CONSTRAINT [Events_Shop]
GO
ALTER TABLE [dbo].[Movie_type]  WITH CHECK ADD FOREIGN KEY([cate_movie_id])
REFERENCES [dbo].[Category_Movie] ([Cate_id])
GO
ALTER TABLE [dbo].[Movie_type]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movie] ([IdMovie])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Order_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [Order_Screening] FOREIGN KEY([Screening_Id])
REFERENCES [dbo].[Screening] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [Order_Screening]
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD  CONSTRAINT [Sales_Shop] FOREIGN KEY([Shop_ShoId])
REFERENCES [dbo].[Shop] ([ShoId])
GO
ALTER TABLE [dbo].[Sales] CHECK CONSTRAINT [Sales_Shop]
GO
ALTER TABLE [dbo].[Screening]  WITH CHECK ADD  CONSTRAINT [Screening_Movie] FOREIGN KEY([Movie_Id])
REFERENCES [dbo].[Movie] ([IdMovie])
GO
ALTER TABLE [dbo].[Screening] CHECK CONSTRAINT [Screening_Movie]
GO
ALTER TABLE [dbo].[Screening]  WITH CHECK ADD  CONSTRAINT [Screening_Room] FOREIGN KEY([Room_IdRoom])
REFERENCES [dbo].[Room] ([IdRoom])
GO
ALTER TABLE [dbo].[Screening] CHECK CONSTRAINT [Screening_Room]
GO
ALTER TABLE [dbo].[Screening_seat]  WITH CHECK ADD  CONSTRAINT [Screening_seat_Order] FOREIGN KEY([Order_OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[Screening_seat] CHECK CONSTRAINT [Screening_seat_Order]
GO
ALTER TABLE [dbo].[Screening_seat]  WITH CHECK ADD  CONSTRAINT [Screening_seat_Screening] FOREIGN KEY([Screening_Id])
REFERENCES [dbo].[Screening] ([Id])
GO
ALTER TABLE [dbo].[Screening_seat] CHECK CONSTRAINT [Screening_seat_Screening]
GO
ALTER TABLE [dbo].[Screening_seat]  WITH CHECK ADD  CONSTRAINT [Screening_seat_seats] FOREIGN KEY([Seat_IdSeat])
REFERENCES [dbo].[Seat] ([IdSeat])
GO
ALTER TABLE [dbo].[Screening_seat] CHECK CONSTRAINT [Screening_seat_seats]
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD  CONSTRAINT [Seat_Room] FOREIGN KEY([IdRoom])
REFERENCES [dbo].[Room] ([IdRoom])
GO
ALTER TABLE [dbo].[Seat] CHECK CONSTRAINT [Seat_Room]
GO
ALTER TABLE [dbo].[Service]  WITH CHECK ADD  CONSTRAINT [Service_Area] FOREIGN KEY([Service_area])
REFERENCES [dbo].[Area] ([AreaId])
GO
ALTER TABLE [dbo].[Service] CHECK CONSTRAINT [Service_Area]
GO
ALTER TABLE [dbo].[Shop]  WITH CHECK ADD  CONSTRAINT [Shop_Service] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([ServiceId])
GO
ALTER TABLE [dbo].[Shop] CHECK CONSTRAINT [Shop_Service]
GO
ALTER TABLE [dbo].[Shop_Product]  WITH CHECK ADD  CONSTRAINT [Shop_Product_Shop] FOREIGN KEY([Shop_ShoId])
REFERENCES [dbo].[Shop] ([ShoId])
GO
ALTER TABLE [dbo].[Shop_Product] CHECK CONSTRAINT [Shop_Product_Shop]
GO
