
CREATE TABLE pilot (
    pilot_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(50),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    pilot_address VARCHAR(300),
    date_joined DATE,
    date_added DATE,
    certificate_type VARCHAR(100),
    certificate_number VARCHAR(100),
    certificate_expiration_date DATE,
    pilot_status VARCHAR(50)
)

CREATE TABLE client (
    client_id SERIAL PRIMARY KEY,
    contact_name VARCHAR(100),
    company_name VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    billing_address VARCHAR(300),
    note TEXT
)

CREATE TABLE mission (
    mission_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES client(client_id),
    mission_name VARCHAR(100),
    mission_type VARCHAR(100),
    objective VARCHAR(100),
    mission_location VARCHAR(100),
    mission_date DATE,
    pilot_in_command_id INT REFERENCES pilot(pilot_id),
    mission_status VARCHAR(100),
    note TEXT
)

CREATE TABLE uav (
    aircraft_id SERIAL PRIMARY KEY,
    manufacturer VARCHAR(100),
    model VARCHAR(50),
    serial_number VARCHAR(100),
    registration_number VARCHAR(100),
    purchase_date DATE,
    aircraft_weight INT,
    aircraft_status VARCHAR(50)
)

CREATE TABLE battery (
    battery_id SERIAL PRIMARY KEY,
    aircraft_id INT REFERENCES uav(aircraft_id),
    serial_number VARCHAR(100),
    cycle_count INT,
    purchase_date DATE,
    health_status VARCHAR(100),
   battery_status VARCHAR(50)
)

CREATE TABLE flight (
    flight_id SERIAL PRIMARY KEY,
    mission_id INT REFERENCES mission(mission_id),
    pilot_id INT REFERENCES pilot(pilot_id),
    aircraft_id INT REFERENCES uav(aircraft_id),
    battery_id INT REFERENCES battery(battery_id),
    flight_date DATE,
    takeoff_location VARCHAR(100),
    takeoff_time TIME,
    landing_location VARCHAR(100),
    landing_time TIME,
    duration_min INT,
    max_speed_mph INT,
    max_altitude_ft INT,
    flight_range_ft INT,
    flight_status VARCHAR(50),
    flight_note TEXT
)