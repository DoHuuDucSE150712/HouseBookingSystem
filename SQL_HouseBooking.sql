create database HouseBooking;
go

use HouseBooking;
go

Drop database HouseBooking

Drop table House_additional_service
Drop table Additional_service
Drop table Menu
Drop table House_img
Drop table Bill_detail
Drop table House
Drop table Location
Drop table Bill
Drop table Users
Drop table Role
Go


-- create table
Create table Users(
	user_id varchar(50) not null,
	fullname nvarchar(100),
	avatar varchar(max),
	username varchar(50),
	password varchar(50),
	phone varchar(10),
	status bit,
	role_id varchar(30) not null,
	primary key(user_id)
)
Go
Create table Role(
	role_id varchar(30),
	name varchar(50),
	primary key(role_id)
)
Go

Create table Bill(
	bill_id varchar(50),
	date date,
	total float,
	status bit,
	user_id varchar(50) not null,
	primary key(bill_id)
)
Go

Create table Bill_detail(
	bill_id varchar(50) not null,
	house_id varchar(50) not null,
	start_date date,
	end_date date,
	bill_price float,
	note nvarchar(max),
	primary key(bill_id,house_id)
)
Go

Create table House(
	house_id varchar(50) not null,
	post_date date,
	house_name nvarchar(max),
	review nvarchar(max),
	house_price float,
	address nvarchar(max),
	description nvarchar(max),
	loca_id varchar(50) not null,
	menu_id varchar(50) not null,
	primary key(house_id)
)
Go

Create table House_img(
	img_id varchar(50) not null,
	img_link varchar(200),
	house_id varchar(50) not null,
	primary key(img_id,house_id)
)
Go

Create table Menu(
	menu_id varchar(50) not null,
	name varchar(100),
	primary key(menu_id)
)
Go

Create table Location(
	loca_id varchar(50) not null,
	name nvarchar(50),
	primary key(loca_id)
)
Go

Create table Additional_service(
	add_service_id varchar(50) not null,
	add_serviceName nvarchar(max),
	add_serviceDesc nvarchar(max),
	primary key(add_service_id)
)
Go

Create table House_additional_service(
	house_id varchar(50) not null,
	add_service_id varchar(50) not null,
	add_service_status bit,
	add_service_price float,
	primary key(house_id,add_service_id)
)
Go

--set foreign key
ALTER TABLE Users
ADD CONSTRAINT FK_Users_Role
FOREIGN KEY (role_id) REFERENCES Role(role_id);
Go

ALTER TABLE Bill
ADD CONSTRAINT FK_Bill_Users
FOREIGN KEY (user_id) REFERENCES Users(user_id);
Go

ALTER TABLE Bill_detail
ADD CONSTRAINT FK_Bill_Detail
FOREIGN KEY (bill_id) REFERENCES Bill(bill_id);
Go

ALTER TABLE Bill_detail
ADD CONSTRAINT FK_Bill_Detail_House
FOREIGN KEY (house_id) REFERENCES House(house_id);
Go

ALTER TABLE House_img
ADD CONSTRAINT FK_House_Img
FOREIGN KEY (house_id) REFERENCES House(house_id);
Go

ALTER TABLE House
ADD CONSTRAINT FK_Location
FOREIGN KEY (loca_id) REFERENCES Location(loca_id);
Go

ALTER TABLE house
ADD CONSTRAINT FK_house_menu
FOREIGN KEY (menu_id) REFERENCES menu(menu_id);
Go

ALTER TABLE House_additional_service
ADD CONSTRAINT FK_House_Additional_Service
FOREIGN KEY (house_id) REFERENCES House(house_id);
Go

ALTER TABLE House_additional_service
ADD CONSTRAINT FK_Additional_Service
FOREIGN KEY (add_service_id) REFERENCES Additional_service(add_service_id);
Go

