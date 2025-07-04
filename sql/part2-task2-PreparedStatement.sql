PREPARE GetOrderDetail FROM
'SELECT OrderID, ItemQuantity, TotalPrice
FROM Orders
WHERE CustomerID = ?';

SET @id = 1;

EXECUTE GetOrderDetail USING @id;