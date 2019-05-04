CREATE TABLE [dbo].[Inventory]
(
	[Product_id] INT NOT NULL PRIMARY KEY, 
    [Amount] INT NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Inventory_Products] FOREIGN KEY (Product_id) REFERENCES dbo.Products(Id)
)
