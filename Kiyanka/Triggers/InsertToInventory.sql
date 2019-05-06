CREATE TRIGGER InsertToInventory 
ON dbo.Operations 
AFTER INSERT
AS
BEGIN

DECLARE @productid int
DECLARE @Amountprod int

SET @productid = (SELECT Product_id FROM inserted)
SET @Amountprod = [dbo].[AmountProduct] (@productid)

IF EXISTS (SELECT 1 FROM dbo.Inventory where Product_id = @productid)
BEGIN
UPDATE dbo.Inventory SET Amount=@Amountprod, Date=(SELECT Date FROM inserted) WHERE Product_id=@productid
END

ELSE
BEGIN
INSERT INTO dbo.Inventory (Product_id, Amount, Date) values (@productid, @Amountprod, (SELECT Date FROM inserted))
END

END
GO