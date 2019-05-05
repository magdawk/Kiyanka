CREATE TRIGGER InsertToInventory 
ON dbo.Operations 
AFTER INSERT
AS

BEGIN
DECLARE @productid int
DECLARE @Amountprod int

SET @productid = (SELECT Product_id FROM inserted)

SET @Amountprod = [dbo].[AmountProduct] (@productid)

INSERT INTO dbo.Inventory (Product_id, Amount, Date) values (@productid, @Amountprod, (SELECT Date FROM inserted))

END
GO