DELIMITER //

CREATE PROCEDURE CancelOrder(IN input_order_id VARCHAR(20))
BEGIN
    DELETE FROM Orders
    WHERE OrderID = input_order_id;
END //

DELIMITER ;


CALL CancelOrder();