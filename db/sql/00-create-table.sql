CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

/*
To generate the UUID values based on the combination of
computer’s MAC address, current timestamp, and a random value,
you use the uuid_generate_v1() function:

If you want to generate a UUID value solely based on random numbers,
you can use the uuid_generate_v4()
*/

CREATE TABLE "public"."dog" (
    "id" uuid DEFAULT uuid_generate_v4(),
    "breed" text NOT NULL,
    "color" text NOT NULL
) WITH (oids = false);
