-- Booking Summary View

CREATE VIEW booking_summary AS
SELECT 
    F.flight_id,
    F.source,
    F.destination,
    COUNT(B.booking_id) AS total_bookings,
    SUM(CASE WHEN B.status = 'cancelled' THEN 1 ELSE 0 END) AS cancellations,
    ROUND(COUNT(B.booking_id) / COUNT(S.seat_no) * 100, 2) AS occupancy_rate_percent
FROM Flights F
JOIN Seats S ON F.flight_id = S.flight_id
LEFT JOIN Bookings B ON F.flight_id = B.flight_id AND S.seat_no = B.seat_no
GROUP BY F.flight_id, F.source, F.destination;
