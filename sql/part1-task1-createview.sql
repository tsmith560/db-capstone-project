CREATE VIEW ordersview AS
SELECT OrderID, ItemQuantity, TotalPrice
FROM Orders
WHERE ItemQuantity >2;