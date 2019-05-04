CREATE TABLE [dbo].[Operations]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Product_id] INT NOT NULL, 
    [Mark] NVARCHAR(1) NOT NULL, 
    [Amount] INT NOT NULL, 
    [Price] MONEY NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Operations_Products] FOREIGN KEY (Product_id) REFERENCES dbo.Products(Id)
)
