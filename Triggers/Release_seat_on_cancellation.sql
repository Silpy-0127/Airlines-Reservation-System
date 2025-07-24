--  Release seat on cancellation
DELIMITER //
CREATE TRIGGER release_seat_on_cancellation
AFTER UPDATE ON Bookings
FOR EACH ROW
BEGIN
  IF NEW.status = 'cancelled' THEN
    UPDATE Seats 
    SET status = 'available'
    WHERE flight_id = NEW.flight_id AND seat_no = NEW.seat_no;
  END IF;
END;
//
DELIMITER ;
