DELIMITER //

CREATE PROCEDURE UpdateBooking (
    IN booking_id INT,
    IN booking_date DATE
)
BEGIN
    UPDATE Bookings
    SET BookingDate = booking_date
    WHERE BookingID = booking_id;
END //

DELIMITER ;


-- Call the UpdateBooking procedure
CALL UpdateBooking (9, '2022-12-17')