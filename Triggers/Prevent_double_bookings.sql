#TRIGGERS

--  Block booking if seat already booked
DELIMITER //
CREATE TRIGGER prevent_double_booking
BEFORE INSERT ON Bookings
FOR EACH ROW
BEGIN
  DECLARE seat_status VARCHAR(10);
  SELECT status INTO seat_status 
  FROM Seats 
  WHERE flight_id = NEW.flight_id AND seat_no = NEW.seat_no;

  IF seat_status = 'booked' THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Seat already booked!';
  END IF;
END;
//
DELIMITER ;
