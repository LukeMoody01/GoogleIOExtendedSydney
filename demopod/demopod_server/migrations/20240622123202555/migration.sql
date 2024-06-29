BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "address" DROP COLUMN "addressId";

--
-- MIGRATION VERSION FOR demopod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('demopod', '20240622123202555', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240622123202555', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
