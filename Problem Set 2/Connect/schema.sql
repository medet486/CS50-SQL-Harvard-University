CREATE TABLE IF NOT EXISTS users(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS schools(
    "id" INTEGER,
    "school_name" TEXT,
    "school_type" TEXT,
    "location" TEXT,
    "foundation_year" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS companies(
    "id" INTEGER,
    "company_name" TEXT,
    "industry_type" TEXT,
    "location" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS connections_people(
    "user_id_1" INTEGER,
	"user_id_2" INTEGER,
	PRIMARY KEY ("user_id_1", "user_id_2")

);

CREATE TABLE IF NOT EXISTS connections_schools(
    "user_id"    INTEGER,
	"school_id"  INTEGER,
	"start_date" NUMERIC,
	"end_date"   NUMERIC,
	"status"     TEXT CHECK ("status" IN ('earned', 'pursued')),
	"type"       TEXT CHECK ("type"   IN ('BA', 'MA', 'PhD', 'etc')),
	FOREIGN KEY ("user_id")   REFERENCES "users" ("id"),
	FOREIGN KEY ("school_id") REFERENCES "schools" ("id")

);

CREATE TABLE IF NOT EXISTS connections_companies(
    "user_id"    INTEGER,
	"company_id" INTEGER,
	"title"      TEXT,
	"start_date" NUMERIC,
	"end_date"   NUMERIC,
	FOREIGN KEY ("user_id")    REFERENCES "users" ("id"),
	FOREIGN KEY ("company_id") REFERENCES "companies" ("id")

);
