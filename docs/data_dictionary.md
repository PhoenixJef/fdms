Pilot
-----

pilot_id
    SERIAL
    Unique Pilot Identifier

first_name
    varchar(100)

Last_name
    varchar(50)

phone_number
    VARCHAR(20)

email
    VARCHAR(100)

address
varchar(100)

date_joined
    VARCHAR(10)

date_added
    VARCHAR(10)

certificate_type
    varchar(100)

certificate_number
    varchar(100)
certificate_expiration_date
    VARCHAR(10)

status
    varchar(100)


Client
-------
Client_id
    SERIAL
    Unique Client Identifier

Contact_name
    varchar(100)

Company_name
    varchar(100)

email
    VARCHAR(50)

phone
    VARCHAR(20)

billing_address
    varchar(100)

notes
    varchar(1000)

Mission
--------
Mission_id
    SERIAL
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
    VARCHAR(10)

Pilot_in_command_id
    Foreign_key

Status
    varchar(100)

Notes
    varchar(100)


UAV ( Unmanned Aircraft Vehicle )
---
Aircraft_id
    SERIAL
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
    VARCHAR(10)

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
    Foreign_KEY

serial_number
    SERIAL

Cycle_count
    Integer

Purchase Date
    VARCHAR(10)

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
    VARCHAR(10)

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