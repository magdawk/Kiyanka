CREATE FUNCTION [dbo].[AmountProduct] (@id int)
RETURNS int 
AS BEGIN

DECLARE @amount int;

SET @amount = (Select sum(O.Amount) 
From Operations as O
Where O.Mark = 'Z' and O.Product_id=@id) - (Select sum(O.Amount) 
From Operations as O
Where O.Mark = 'S' and O.Product_id=@id)

RETURN @amount
END