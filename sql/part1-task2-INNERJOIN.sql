SELECT 
    cd.CustomerID,
    cd.Name AS CustomerName,
    o.OrderID,
    o.TotalPrice,
    mi.ItemName,
    mi.Category
FROM 
    CustomerDetails cd
INNER JOIN Orders o ON cd.CustomerID = o.CustomerID
INNER JOIN OrderMenuItems omi ON o.OrderID = omi.OrderID
INNER JOIN MenuItems mi ON omi.MenuItemID = mi.MenuItemID
WHERE 
    o.TotalPrice > 150
ORDER BY 
    o.TotalPrice ASC;
