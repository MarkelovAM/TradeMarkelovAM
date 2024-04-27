USE [sessia1_markelov]
GO

INSERT INTO [dbo].[order_product]
           ([order_id]
           ,[product_article_number]
           ,[product_quantity])


SELECT [Номер заказа]
      ,[Состав]
      ,[Кол-во]
  FROM [dbo].[order_product_]
GO



