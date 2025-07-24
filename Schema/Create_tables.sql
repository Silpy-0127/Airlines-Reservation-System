

#TABLES CREATION
  
-- Flights Table
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    source VARCHAR(50),
    destination VARCHAR(50),
    flight_date DATE,
    flight_time TIME
);

-- Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    contact VARCHAR(15)
);

-- Seats Table
CREATE TABLE Seats (
    flight_id INT,
    seat_no VARCHAR(5),
    status ENUM('available', 'booked') DEFAULT 'available',
    PRIMARY KEY (flight_id, seat_no),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);

-- Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    flight_id INT,
    customer_id INT,
    seat_no VARCHAR(5),
    status ENUM('booked', 'cancelled') DEFAULT 'booked',
    booking_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (flight_id, seat_no) REFERENCES Seats(flight_id, seat_no)
);
