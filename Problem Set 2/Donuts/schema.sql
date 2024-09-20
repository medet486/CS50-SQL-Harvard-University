CREATE TABLE IF NOT EXISTS ingredients(
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "price" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS donuts(
    "id" INTEGER,
    "name" TEXT,
    "gluten_free" INTEGER,
    "price" INTEGER,
    "used_ingredients_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY ("used_ingredients_id") REFERENCES ingredients("id")
);

CREATE TABLE IF NOT EXISTS orders(
    "id" INTEGER,
    "order_number" INTEGER,
    "ordered_donuts" TEXT,
    "customer" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY ("customer") REFERENCES customers("id")
);

CREATE TABLE IF NOT EXISTS customers(
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "order_history" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY ("order_history") REFERENCES orders("id")
);

