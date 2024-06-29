BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "address" (
    "id" bigserial PRIMARY KEY,
    "street" text NOT NULL,
    "addressId" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user" (
    "id" bigserial PRIMARY KEY,
    "addressId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_address_unique_idx" ON "user" USING btree ("addressId");

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "user"
    ADD CONSTRAINT "user_fk_0"
    FOREIGN KEY("addressId")
    REFERENCES "address"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR demopod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('demopod', '20240622123006316', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240622123006316', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
