USE [sessia1_markelov]
GO

INSERT INTO [dbo].[product_]
           ([Артикул]
           ,[Наименование ]
           ,[Единица измерения]
           ,[Стоимость]
           ,[Размер максимально возможной скидки]
           ,[Производитель]
           ,[Поставщик]
           ,[Категория товара]
           ,[Действующая скидка]
           ,[Кол-во на складе]
           ,[Описание]
           ,[Изображение])
     VALUES
           (<Артикул, nvarchar(255),>
           ,<Наименование , nvarchar(255),>
           ,<Единица измерения, nvarchar(255),>
           ,<Стоимость, float,>
           ,<Размер максимально возможной скидки, float,>
           ,<Производитель, nvarchar(255),>
           ,<Поставщик, nvarchar(255),>
           ,<Категория товара, nvarchar(255),>
           ,<Действующая скидка, float,>
           ,<Кол-во на складе, float,>
           ,<Описание, nvarchar(255),>
           ,<Изображение, nvarchar(255),>)
GO
USE [sessia1_markelov]








GO

INSERT INTO [dbo].[order_product]
           ([order_id]
           ,[product_article_number]
           ,[product_quantity])
     VALUES
           (<order_id, int,>
           ,<product_article_number, nvarchar(100),>
           ,<product_quantity, tinyint,>)
GO



