Pilot
-----

pilot_id
    INTEGER
    Unique Pilot Identifier

first_name
    varchar(50)

Last_name
    varchar(50)

phone_number
    INTEGER

email
    Email

address
varchar(100)

date_joined
    date

date_added
    date

certificate_type
    varchar(100)

certificate_number
    varchar(100)
certificate_expiration_date
    date

status
    varchar(100)


Client
-------
Client_id
    INTEGER
    Unique Client Identifier

Contact_name
    varchar

Company_name
    varchar

email
    email

phone
    INTEGER

billing_address
    varchar(100)

notes
    varchar(1000)

Mission
--------
Mission_id
    INTEGER
    Unique_identifier

client_id
    Foreign_key

Mission_name
    varchar(100)

Missin_type
    varchar(100)

Objective
    varchar(100)

location
    varchar(100)

date
    date

Pilot_in_command_id
    Foreign_key

Status
    varchar(100)

Notes
    varchar(100)


UAV ( Unmanned Aircraft Vehicle )
---
Aircraft_id
    INTEGER
    Unique_indentifier

Manufacturer
    varchar(100)

Model
    varchar(100)

Serial_number
    SERIAL

Registration
    SERIAL

purchase_date
    date

weight
    INTEGER

status
    varchar(1000)

Battery  
-------
batt_id
    INTEGER 
    unique identifier

aircraft_id
    Foreign_identifier

serial_number
    SERIAL

Cycle_count
    Integer

Purchase Date
    date

health_status
    varchar(100)

Status
    varchar(100)


Flight
------
Flight_id
    INTEGER
    unique_identifier

mission_id
    foreign_key

pilot_in_command
    Foreign_key

aircraft_id
    Foreign_key

battery_id
    Foreign_key

date
    date

Takeoff_location
    varchar(100)

takeoff_time
    Integer

landing_location
    varchar(100)

landing_time
    Integer

duration_minutes
    integer

max_altitude_ft
    Integer

max_speed_mph
    Integer

range_ft
    Integer

Flight_status
    varchar(100)

Note
    varchar(1000)