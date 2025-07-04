DELIMITER //

CREATE PROCEDURE CancelBooking (
IN booking_id INT
)

BEGIN
	DELETE FROM Bookings
	WHERE BookingID = booking_id;
END //

DELIMITER ;


-- Call procedure
CALL CancelBooking(4);