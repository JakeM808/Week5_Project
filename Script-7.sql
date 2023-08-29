
CREATE TABLE "salesperson" (
  "salesperson_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "phone" INTEGER,
  "email" VARCHAR
);

ALTER TABLE salesperson 
	ADD PRIMARY KEY ("salesperson_id");


CREATE TABLE "Car" (
  "vehicle_id" SERIAL PRIMARY KEY,
  "year" DATE,
  "make" VARCHAR,
  "model" VARCHAR
);

ALTER TABLE "Car" 
	ADD PRIMARY KEY ("vehicle_id");

CREATE TABLE "service" (
  "service_dept_id" SERIAL PRIMARY KEY,
  "phone" INTEGER,
  "address" VARCHAR
);

ALTER TABLE "service" 
	ADD PRIMARY KEY ("service_dept_id");

CREATE TABLE "mechanic" (
  "mechanic_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "service_dept_id" INTEGER
);




CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR,
  "last_name" VARCHAR,
  "phone" INTEGER,
  "email" VARCHAR
);
ALTER TABLE "customer" 
	ADD PRIMARY KEY ("customer_id");

CREATE TABLE "dealership" (
  "dealer_id" SERIAL PRIMARY KEY,
  "name" VARCHAR,
  "address" VARCHAR,
  "phone" INTEGER
);
ALTER TABLE "dealership" 
	ADD PRIMARY KEY ("dealer_id");

CREATE TABLE "invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "cost" NUMERIC(6,2),
  "salesperson_id" INTEGER,
  FOREIGN KEY ("salesperson_id") REFERENCES "salesperson"("salesperson_id"),
  "vehicle_id" INTEGER,
  FOREIGN KEY ("vehicle_id") REFERENCES "Car" ("vehicle_id"),
  "dealership_id" INTEGER,
  FOREIGN KEY ("dealer_id") REFERENCES "dealership" ("dealer_id"),
  "customer_id" INTEGER,
  FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id"),
  "service_dept_id" INTEGER,
  FOREIGN KEY ("service_dept_id") REFERENCES "service" ("service_dept_id")
 );


ALTER TABLE "mechanic"
ADD FOREIGN KEY ("service_dept_id") REFERENCES "service"("service_dept_id");
