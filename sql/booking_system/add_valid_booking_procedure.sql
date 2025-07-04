DELIMITER //

CREATE PROCEDURE AddValidBooking (
    IN p_booking_date DATETIME,
    IN p_table_number INT
)
BEGIN
    DECLARE table_booked INT DEFAULT 0;

    START TRANSACTION;

    -- Check if the table is already booked on the given date
    SELECT COUNT(*) INTO table_booked
    FROM Bookings
    WHERE BookingDate = p_booking_date
      AND TableNo = p_table_number;

    IF table_booked > 0 THEN
        -- Table is already booked, rollback
        ROLLBACK;
        SELECT 'Booking declined: Table already reserved for that date.' AS message;
    ELSE
        -- Table is available, insert new booking (CustomerID omitted here)
        INSERT INTO Bookings (BookingDate, TableNo)
        VALUES (p_booking_date, p_table_number);
        COMMIT;
        SELECT 'Booking confirmed!' AS message;
    END IF;
END //

DELIMITER ;
