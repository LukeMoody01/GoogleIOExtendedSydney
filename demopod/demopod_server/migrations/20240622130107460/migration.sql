BEGIN;


--
-- MIGRATION VERSION FOR demopod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('demopod', '20240622130107460', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240622130107460', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
