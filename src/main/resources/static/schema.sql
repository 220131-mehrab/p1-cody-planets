CREATE TABLE "planets"(
    "PlanetId" INT PRIMARY KEY NOT NULL,
    "Name" VARCHAR
);

CREATE TABLE "Info"(
    "InfoId" INT NOT NULL;
    "Title" VARCHAR NOT NULL
    "PlanetId" INT NOT NULL;
    CONSTRAINT "PK_Info" PRIMARY KEY ("Info")
    CONSTRAINT "FK_InfoPlanetId" FOREIGN KEY ("PlanetId") REFERENCES "planets" ("PlanetId") ON DELETE NO ACTION ON UPDATE NO ACTION
);

    CREATE INDEX "IFK_InfoPlanetsId" ON "Info" ("PlanetId");

    INSERT INTO "planets" VALUES (1, 'Mercury');
    INSERT INTO "planets" VALUES (2, 'Venus');
    INSERT INTO "planets" VALUES(3, 'Earth');
    INSERT INTO "planets" VALUES(4, 'Mars');
    INSERT INTO "planets" VALUES(5, 'Jupiter');
    INSERT INTO "planets" VALUES(6, 'Saturn');
    INSERT INTO "planets" VALUES(7, 'Uranus');
    INSERT INTO "planets" VALUES(8, 'Neptune');

    INSERT INTO "Info" VALUES(1, 'Information on Mercury', 1);
    INSERT INTO "Info" VALUES(2, 'Information on Venus', 2);
    INSERT INTO "Info" VALUES(3, 'Information on Earth', 3);
    INSERT INTO "Info" VALUES(4, 'Information on Mars', 4);