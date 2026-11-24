
INSERT INTO pilot (
    first_name,
    last_name,
    phone_number,
    email,
    date_joined,
    date_added,
    certificate_type,
    certificate_number,
    certificate_expiration_date,
    pilot_status
)
VALUES (
    'admin',
    'user',
    '240-784-3783',
    'rachid.ckar@outlook.com',
    '11/12/2026',
    '11/23/2026',
    'part 107',
    '10FL2783',
    '17/08/2028',
    'Active'
);

INSERT INTO client (
    contact_name,
    company_name,
    phone_number,
    email,
    billing_address,
    note
)
VALUES (
    'Lvdia_rep',
    'LVDIA',
    '123-456-7890',
    'supervisor@lvdia.com',
    '806 West side dr, gaithersburg MD USA 20878',
    'office 555'
);

INSERT INTO mission (
    client_id,
    mission_name,
    mission_type,
    objective,
    mission_location,
    mission_date,
    pilot_in_command_id,
    mission_status,
    note
)
VALUES (
    1,
    'Nour',
    'Reconnaissance',
    'Observe designated construction area and document site progress',
    'Rockville, MD',
    '2027-01-10',
    1,
    'Standby',
    'Inial test mission'
);

INSERT INTO uav (
    manufacturer,
    model,
    serial_number,
    registration_number,
    purchase_date,
    aircraft_weight,
    aircraft_status
)
VALUES (
    'DJI',
    'Mini Pro 3',
    'DJIM3P00123456789',
    'FA3K9B2X',
    '2026-08-15',
    249,
    'Active'
);

INSERT INTO battery (
    aircraft_id,
    serial_number,
    cycle_count,
    purchase_date,
    health_status_status,
    battery_status
)
VALUES (
    1,
    'BAT001234567',
    12,
    '2026-08-15',
    'good',
    'Active'
);

INSERT into flight (
    mission_id,
    pilot_id,
    aircraft_id,
    battery_id,
    flight_date,
    takeoff_location,
    takeoff_time,
    landing_location,
    landing_time,
    duration_min,
    max_speed_mph,
    max_altitude_ft,
    flight_range_ft,
    flight_status,
    flight_note
)
VALUES (
    1,
    1,
    1,
    1,
    '2026-11-16',
    'Rockville Park',
    '09:00:00',
    'Rockville Park',
    '09:18:35',
    18,
    25,
    350,
    4200,
    'Completed',
    'Successful reconnaissance flight'
);