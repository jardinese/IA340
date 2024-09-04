CREATE TABLE IF NOT EXISTS "Name" (
	"fips" varchar(4) NOT NULL,
	"name" varchar(100) NOT NULL UNIQUE,
	PRIMARY KEY ("tips")
);

CREATE TABLE IF NOT EXISTS "Income" (
	"fips" varchar(255) NOT NULL,
	"income" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("tips", "year")
);

CREATE TABLE IF NOT EXISTS "Population" (
	"fips" varchar(4) NOT NULL,
	"pop" bigint NOT NULL,
	"year" bigint NOT NULL,
	PRIMARY KEY ("tips", "year")
);


ALTER TABLE "Income" ADD CONSTRAINT "Income_fk0" FOREIGN KEY ("tips") REFERENCES "Name"("tips");
ALTER TABLE "Population" ADD CONSTRAINT "Population_fk0" FOREIGN KEY ("tips") REFERENCES "Name"("tips");
