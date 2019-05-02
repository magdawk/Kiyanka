CREATE TABLE [dbo].[Products]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(256) NOT NULL, 
    [Symbol] NVARCHAR(128) NOT NULL, 
    [Price] MONEY NULL, 
    [Tax] FLOAT NULL, 
    [Unit] NVARCHAR(3) NULL
)
