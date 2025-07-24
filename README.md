# Airline Reservation System (SQL Project)

This project is a simulation of an airline reservation backend system developed using **MySQL Workbench**. It handles the core functionalities such as flight management, customer records, seat assignments, and booking workflows with real-time validation using SQL triggers and views.

> Designed to simulate the real-world database needs of an airline company, this project showcases clean schema design, normalization, data integrity, and reporting — all built with SQL.

---

# Project Highlights

- Relational database schema with four core tables:
  - `Flights`
  - `Customers`
  - `Seats`
  - `Bookings`
- Sample dataset with 200+ rows (customers, flights, bookings)
- Triggers to manage:
  - Preventing double bookings
  - Auto-updating seat status on booking/cancellation
- A summary view that reports:
  - Total bookings per flight
  - Cancellations
  - Seat occupancy rate

---

#Tools & Technologies Used

- **MySQL Workbench**
- **SQL** (DDL, DML, Triggers, Views)
- CSV/Manual data population
- GitHub for version control

---

# Folder Structure

```bash
Airlines-Reservation-System/
│
├── schema/
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│
├── triggers/
│   ├── prevent_double_booking.sql
│   ├── update_seat_on_booking.sql
│   ├── release_seat_on_cancellation.sql
│
├── queries/
│   ├── search_flights.sql
│   ├── available_seats.sql
│   ├── bookings_by_customer.sql
│
├── views/
│   └── booking_summary_view.sql
│
├── REPORT.pdf
├── README.md
└── screenshots/
    └── *.png (, ER diagram, sample outputs)
