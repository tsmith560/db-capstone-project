DELIMITER //

CREATE PROCEDURE AddBooking (
IN booking_id INT,
IN customer_id VARCHAR(20),
IN booking_date DATE,
IN table_number INT
)

BEGIN
	INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNo, StaffID)
	VALUES (booking_id, customer_id, booking_date, table_number, 1);
END //

DELIMITER ;


-- Call procedure
CALL AddBooking(5, '00-435-7006', '2022-10-14', 3);