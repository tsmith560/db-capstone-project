DELIMITER //

CREATE PROCEDURE CheckBooking(IN booking_date DATETIME, IN table_no INT)
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


-- because I set BookingDate as "DATETIME" in Workbench, need to include time
CALL CheckBooking('2022-10-10 00:00:00', 5);
