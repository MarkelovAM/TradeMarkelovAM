CREATE DATABASE [sessia1_markelov]
GO
USE [sessia1_markelov]
GO
CREATE TABLE role
(
	role_id INT PRIMARY KEY IDENTITY NOT NULL,
	role_name nvarchar(32) not null,
)
GO
CREATE TABLE [user]
(
	user_id INT PRIMARY KEY IDENTITY NOT NULL,
	user_last_name NVARCHAR(100) NOT NULL,
	user_first_name NVARCHAR(100) NOT NULL,
	user_middle_name NVARCHAR(100) NOT NULL,
	user_login NVARCHAR(64) NOT NULL,
	user_password NVARCHAR(64) NOT NULL,
	user_role_id INT FOREIGN KEY REFERENCES role (role_id)
)
GO
CREATE TABLE pickup_point
(
	pickup_point_id INT PRIMARY KEY IDENTITY NOT NULL,
	pickup_point_name NVARCHAR(100) NOT NULL
)
GO
CREATE TABLE [order]
(
	order_id INT PRIMARY KEY IDENTITY NOT NULL,
	order_user_id INT FOREIGN KEY REFERENCES [user] (user_id),
	order_status NVARCHAR(10) NOT NULL,
	order_date DATE NOT NULL,
	order_delivery_date DATE NOT NULL,
	order_pickup_point_id INT FOREIGN KEY REFERENCES pickup_point (pickup_point_id) NOT NULL,
	order_code SMALLINT NOT NULL
)
GO
CREATE TABLE product
(
	product_article_number NVARCHAR(100) PRIMARY KEY,
	product_name NVARCHAR(100) NOT NULL,
	product_unit NVARCHAR(10) NOT NULL,
	product_cost DECIMAL(19,2) NOT NULL,
	product_max_discount TINYINT NOT NULL,
	product_manufacturer NVARCHAR(32) NOT NULL,
	product_provider NVARCHAR(32) NOT NULL,
	product_category NVARCHAR(32) NOT NULL,
	product_discount_amount TINYINT NOT NULL,
	product_quantity_in_stock SMALLINT NOT NULL,
	product_description NVARCHAR(MAX) NOT NULL,
	product_photo NVARCHAR(64)
)
GO
CREATE TABLE order_product
(
	order_id INT FOREIGN KEY REFERENCES [order] (order_id) NOT NULL,
	product_article_number NVARCHAR(100) FOREIGN KEY REFERENCES product(product_article_number) NOT NULL,
	PRIMARY KEY (order_id, product_article_number),
	product_quantity TINYINT NOT NULL
)


--Добавление данных
INSERT INTO dbo.role
VALUES 
('Администратор'),
('Менеджер'),
('Клиент')