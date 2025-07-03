DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(ItemQuantity) AS MaxQuantity
    FROM OrderMenuItems;
END //

DELIMITER ;
