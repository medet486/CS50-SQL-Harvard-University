CREATE TABLE IF NOT EXISTS passengers(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")

);


CREATE TABLE IF NOT EXISTS checkin(
    "id" INTEGER,
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    "checkin_time" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES passengers("id"),
    FOREIGN KEY("flight_id") REFERENCES flights("id")

);

CREATE TABLE IF NOT EXISTS airlines(
    "id" INTEGER,
    "name_airline" TEXT,
    "concourse" TEXT,
    PRIMARY KEY("id")

);

CREATE TABLE IF NOT EXISTS flights(
    "id" INTEGER,
    "flight_number" INTEGER,
    "airline_id" INTEGER,
    "airport_depart_code" INTEGER,
    "airport_headed_code" INTEGER,
    "expected_departure" NUMERIC,
    "expected_arrival" NUMERIC,
    PRIMARY KEY ("id"),
    FOREIGN KEY("airline_id") REFERENCES airlines("id")

);
