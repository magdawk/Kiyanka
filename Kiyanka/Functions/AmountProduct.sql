CREATE FUNCTION dbo.AmountProduct (@id int)
RETURNS int 
AS BEGIN

Declare @amount int;

SET @amount = ISNULL((Select sum(O.Amount) 
From Operations as O
Where O.Mark = 'Z' and O.Product_id=@id),0) - ISNULL((Select sum(O.Amount) 
From Operations as O
Where O.Mark = 'S' and O.Product_id=@id),0)

RETURN @amount

END;