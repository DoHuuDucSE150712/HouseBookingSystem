create database [HouseBooking]

USE [HouseBooking]
GO
/****** Object:  Table [dbo].[Additional_service]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Additional_service](
	[add_service_id] [int] IDENTITY(0,1) NOT NULL,
	[add_serviceName] [nvarchar](max) NULL,
	[add_serviceDesc] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[add_service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[bill_id] [int] IDENTITY(0,1) NOT NULL,
	[date] [date] NULL,
	[total] [float] NULL,
	[status] [bit] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_detail]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_detail](
	[bill_id] [int] NOT NULL,
	[house_id] [int] NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[note] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC,
	[house_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House](
	[house_id] [int] IDENTITY(0,1) NOT NULL,
	[post_date] [date] NULL,
	[house_name] [nvarchar](max) NULL,
	[review] [nvarchar](max) NULL,
	[house_price] [float] NULL,
	[status] [bit] NULL,
	[address] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[loca_id] [int] NOT NULL,
	[menu_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[house_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_additional_service]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_additional_service](
	[house_id] [int] NOT NULL,
	[add_service_id] [int] NOT NULL,
	[add_service_status] [bit] NULL,
	[add_service_price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[house_id] ASC,
	[add_service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[House_img]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[House_img](
	[img_id] [int] IDENTITY(0,1) NOT NULL,
	[img_link] [varchar](200) NULL,
	[house_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[img_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[loca_id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[loca_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menu_id] [int] IDENTITY(0,1) NOT NULL,
	[name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[role_id] [int] IDENTITY(0,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/29/2022 3:19:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[user_id] [int] IDENTITY(0,1) NOT NULL,
	[fullname] [nvarchar](100) NULL,
	[avatar] [varchar](max) NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[phone] [int] NULL,
	[status] [bit] NULL,
	[role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Additional_service] ON 

INSERT [dbo].[Additional_service] ([add_service_id], [add_serviceName], [add_serviceDesc]) VALUES (0, N'breakfast', NULL)
INSERT [dbo].[Additional_service] ([add_service_id], [add_serviceName], [add_serviceDesc]) VALUES (1, N'lunch', N'rice, meat, drink,...')
SET IDENTITY_INSERT [dbo].[Additional_service] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (0, CAST(N'2022-09-29' AS Date), 3000000, 1, 2)
INSERT [dbo].[Bill] ([bill_id], [date], [total], [status], [user_id]) VALUES (1, CAST(N'2022-09-29' AS Date), 1500000, 1, 4)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
INSERT [dbo].[Bill_detail] ([bill_id], [house_id], [start_date], [end_date], [note]) VALUES (0, 0, CAST(N'2022-09-30' AS Date), CAST(N'2022-10-30' AS Date), N'no')
INSERT [dbo].[Bill_detail] ([bill_id], [house_id], [start_date], [end_date], [note]) VALUES (1, 0, CAST(N'2022-11-02' AS Date), CAST(N'2022-11-17' AS Date), N'14 day')
GO
SET IDENTITY_INSERT [dbo].[House] ON 

INSERT [dbo].[House] ([house_id], [post_date], [house_name], [review], [house_price], [status], [address], [description], [loca_id], [menu_id]) VALUES (0, CAST(N'2022-09-29' AS Date), N'house1', N'ok', 2000000, 1, N'12/27, Lê Quang Định, Bình Thạnh, HCM', NULL, 2, 1)
SET IDENTITY_INSERT [dbo].[House] OFF
GO
INSERT [dbo].[House_additional_service] ([house_id], [add_service_id], [add_service_status], [add_service_price]) VALUES (0, 0, 1, 200000)
INSERT [dbo].[House_additional_service] ([house_id], [add_service_id], [add_service_status], [add_service_price]) VALUES (0, 1, 0, 250000)
GO
SET IDENTITY_INSERT [dbo].[House_img] ON 

INSERT [dbo].[House_img] ([img_id], [img_link], [house_id]) VALUES (0, N'aa', 0)
INSERT [dbo].[House_img] ([img_id], [img_link], [house_id]) VALUES (1, N'bbbb', 0)
INSERT [dbo].[House_img] ([img_id], [img_link], [house_id]) VALUES (2, N'cccc', 0)
SET IDENTITY_INSERT [dbo].[House_img] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([loca_id], [name]) VALUES (0, N'Go Vap')
INSERT [dbo].[Location] ([loca_id], [name]) VALUES (1, N'Thu Duc')
INSERT [dbo].[Location] ([loca_id], [name]) VALUES (2, N'Binh Thanh ')
INSERT [dbo].[Location] ([loca_id], [name]) VALUES (3, N'Q12')
INSERT [dbo].[Location] ([loca_id], [name]) VALUES (4, N'Q9')
INSERT [dbo].[Location] ([loca_id], [name]) VALUES (5, N'Tan Binh')
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([menu_id], [name]) VALUES (0, N'villa')
INSERT [dbo].[Menu] ([menu_id], [name]) VALUES (1, N'home stay')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([role_id], [name]) VALUES (0, N'admin')
INSERT [dbo].[Role] ([role_id], [name]) VALUES (1, N'host')
INSERT [dbo].[Role] ([role_id], [name]) VALUES (2, N'customer')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([user_id], [fullname], [avatar], [username], [password], [phone], [status], [role_id]) VALUES (0, N'Dương Tuấn Kiệt', NULL, N'kietdtse151418', N'1', 0339526281, 1, 0)
INSERT [dbo].[Users] ([user_id], [fullname], [avatar], [username], [password], [phone], [status], [role_id]) VALUES (1, N'Minh Hy', NULL, N'hyminh', N'1', 0585858, 1, 1)
INSERT [dbo].[Users] ([user_id], [fullname], [avatar], [username], [password], [phone], [status], [role_id]) VALUES (2, N'Hữu Đức', NULL, N'duchuu', N'1', 057665353, 1, 2)
INSERT [dbo].[Users] ([user_id], [fullname], [avatar], [username], [password], [phone], [status], [role_id]) VALUES (3, N'Nam Nguyễn', NULL, N'namnguyen', N'1', 0363535, 1, 1)
INSERT [dbo].[Users] ([user_id], [fullname], [avatar], [username], [password], [phone], [status], [role_id]) VALUES (4, N'Trung', NULL, N'trung', N'1', 0353424443, 1, 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Users] FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([user_id])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Users]
GO
ALTER TABLE [dbo].[Bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Detail] FOREIGN KEY([bill_id])
REFERENCES [dbo].[Bill] ([bill_id])
GO
ALTER TABLE [dbo].[Bill_detail] CHECK CONSTRAINT [FK_Bill_Detail]
GO
ALTER TABLE [dbo].[Bill_detail]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Detail_House] FOREIGN KEY([house_id])
REFERENCES [dbo].[House] ([house_id])
GO
ALTER TABLE [dbo].[Bill_detail] CHECK CONSTRAINT [FK_Bill_Detail_House]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_house_menu] FOREIGN KEY([menu_id])
REFERENCES [dbo].[Menu] ([menu_id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_house_menu]
GO
ALTER TABLE [dbo].[House]  WITH CHECK ADD  CONSTRAINT [FK_Location] FOREIGN KEY([loca_id])
REFERENCES [dbo].[Location] ([loca_id])
GO
ALTER TABLE [dbo].[House] CHECK CONSTRAINT [FK_Location]
GO
ALTER TABLE [dbo].[House_additional_service]  WITH CHECK ADD  CONSTRAINT [FK_Additional_Service] FOREIGN KEY([add_service_id])
REFERENCES [dbo].[Additional_service] ([add_service_id])
GO
ALTER TABLE [dbo].[House_additional_service] CHECK CONSTRAINT [FK_Additional_Service]
GO
ALTER TABLE [dbo].[House_additional_service]  WITH CHECK ADD  CONSTRAINT [FK_House_Additional_Service] FOREIGN KEY([house_id])
REFERENCES [dbo].[House] ([house_id])
GO
ALTER TABLE [dbo].[House_additional_service] CHECK CONSTRAINT [FK_House_Additional_Service]
GO
ALTER TABLE [dbo].[House_img]  WITH CHECK ADD  CONSTRAINT [FK_House_Img] FOREIGN KEY([house_id])
REFERENCES [dbo].[House] ([house_id])
GO
ALTER TABLE [dbo].[House_img] CHECK CONSTRAINT [FK_House_Img]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([role_id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
