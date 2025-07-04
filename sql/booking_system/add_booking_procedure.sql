DELIMITER //

CREATE PROCEDURE AddBooking (
IN booking_id INT,
IN customer_id VARCHAR(20),
IN booking_date DATETIME,
IN table_number INT
)

BEGIN
	INSERT INTO Bookings (BookingID, CustomerID, BookingDate, TableNo, StaffID)
	VALUES (booking_id, customer_id, booking_date, table_number, 1);
END //

DELIMITER ;