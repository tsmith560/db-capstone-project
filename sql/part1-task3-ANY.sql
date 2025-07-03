SELECT ItemName
FROM MenuItems
WHERE MenuItemID = ANY (
     SELECT MenuItemID
     FROM OrderMenuItems
     GROUP BY MenuItemID
     HAVING COUNT(OrderMenuItemID) > 2
 );