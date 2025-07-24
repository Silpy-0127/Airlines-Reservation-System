-- Update seat status after booking

DELIMITER //
CREATE TRIGGER update_seat_on_booking
AFTER INSERT ON Bookings
FOR EACH ROW
BEGIN
  UPDATE Seats 
  SET status = 'booked'
  WHERE flight_id = NEW.flight_id AND seat_no = NEW.seat_no;
END;
//
DELIMITER ;
