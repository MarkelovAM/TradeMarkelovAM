USE [sessia1_markelov]
GO

INSERT INTO [dbo].[product_]
           ([�������]
           ,[������������ ]
           ,[������� ���������]
           ,[���������]
           ,[������ ����������� ��������� ������]
           ,[�������������]
           ,[���������]
           ,[��������� ������]
           ,[����������� ������]
           ,[���-�� �� ������]
           ,[��������]
           ,[�����������])
     VALUES
           (<�������, nvarchar(255),>
           ,<������������ , nvarchar(255),>
           ,<������� ���������, nvarchar(255),>
           ,<���������, float,>
           ,<������ ����������� ��������� ������, float,>
           ,<�������������, nvarchar(255),>
           ,<���������, nvarchar(255),>
           ,<��������� ������, nvarchar(255),>
           ,<����������� ������, float,>
           ,<���-�� �� ������, float,>
           ,<��������, nvarchar(255),>
           ,<�����������, nvarchar(255),>)
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



