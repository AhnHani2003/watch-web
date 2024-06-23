use master
create database WatchWeb

GO
USE WatchWeb
GO
/****** Object:  Table Product*/
CREATE TABLE product(
	id int IDENTITY (1,1) PRIMARY KEY,
	productid varchar (30)NOT NULL,
	productname nvarchar (150) NOT NULL,
	productprice int NULL,
	discount float NOT NULL,
	alias float(50) NULL,
	newprod bit NULL,
	topprod bit NULL,
	discountprod bit NULL,
	brandname varchar (50) NOT NULL,
	kieumay varchar (50) NOT NULL,
	day varchar (100),
	matkinh varchar (100),
	chongnuoc varchar (20),
	hinhanh1 varchar (MAX) NULL,
	hinhanh2 varchar (MAX) NULL,
	hinhanh3 varchar (MAX) NULL,
	hinhanh4 varchar (MAX) NULL,
	hinhanh5 varchar (MAX) NULL,
	);

GO
/****** Object:  Table Brand Script Date: 6/20/2024 11:19:33 PM ******/
SET ANSI_NULLS ON
GO   
SET QUOTED_IDENTIFIER ON
GO
INSERT INTO product (productid, productname, productprice, discount, alias, newprod, topprod, discountprod, brandname, kieumay, day, matkinh, chongnuoc, hinhanh1, hinhanh2, hinhanh3, hinhanh4, hinhanh5)
VALUES 
('P001', N'Product 1', 1000, 10.0, NULL, 1, 0, 0, 'Brand A', 'Model X', 'Leather', 'Glass', 'Waterproof', 'image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg'),

('P002', N'Product 2', 1500, 5.0, NULL, 0, 1, 1, 'Brand B', 'Model Y', 'Metal', 'Plastic', 'Not Waterproof', 'image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg'),

('P003', N'Product 3', 2000, 20.0, NULL, 1, 1, 1, 'Brand C', 'Model Z', 'Rubber', 'Crystal', 'Water Resistant', 'image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg', 'image5.jpg');

