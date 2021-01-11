-- CreateTable
CREATE TABLE "entries" (
"id" SERIAL,
    "date" TIMESTAMP(3) NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "room" TEXT NOT NULL,
    "starttime" TIMESTAMP(3) NOT NULL,
    "endtime" TIMESTAMP(3) NOT NULL,
    "trip_id" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "speakers" (
"id" SERIAL,
    "name" TEXT NOT NULL,
    "href" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tags" (
"id" SERIAL,
    "title" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "trips" (
"id" SERIAL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "speakers_entries" (
"id" SERIAL,
    "speaker_id" INTEGER,
    "entry_id" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tags_entries" (
"id" SERIAL,
    "tag_id" INTEGER,
    "entry_id" INTEGER,

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "entries" ADD FOREIGN KEY("trip_id")REFERENCES "trips"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "speakers_entries" ADD FOREIGN KEY("entry_id")REFERENCES "entries"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "speakers_entries" ADD FOREIGN KEY("speaker_id")REFERENCES "speakers"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tags_entries" ADD FOREIGN KEY("entry_id")REFERENCES "entries"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tags_entries" ADD FOREIGN KEY("tag_id")REFERENCES "tags"("id") ON DELETE SET NULL ON UPDATE CASCADE;
