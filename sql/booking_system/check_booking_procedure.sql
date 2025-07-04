DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_no INT)
BEGIN
    DECLARE booking_count INT;

    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNo = table_no;

    IF booking_count > 0 THEN
        SELECT 'Table is already booked' AS Status;
    ELSE
        SELECT 'Table is available' AS Status;
    END IF;
END //

DELIMITER ;


-- Call the procedure
CALL CheckBooking('2022-10-10', 5);
