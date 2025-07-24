#SAMPLE QUERIES

--  Search available flights
SELECT * FROM Flights
WHERE source = 'Bangalore' AND destination = 'Delhi';


-- Check available seats on a flight
SELECT seat_no FROM Seats
WHERE flight_id = 1 AND status = 'available';


--  Search bookings by customer
SELECT B.booking_id, F.source, F.destination, B.seat_no, B.status
FROM Bookings B
JOIN Flights F ON B.flight_id = F.flight_id
WHERE B.customer_id = 1;
