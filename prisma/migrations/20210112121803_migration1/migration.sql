-- CreateTable
CREATE TABLE "entries" (
"id" SERIAL,
    "date" TIMESTAMP(3) NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "room" TEXT NOT NULL,
    "starttime" TIMESTAMP(3) NOT NULL,
    "endtime" TIMESTAMP(3) NOT NULL,
    "tripId" INTEGER,

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
    "imgUrl" TEXT NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "speakers_entries" (
"id" SERIAL,
    "speakerId" INTEGER,
    "entryId" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tags_entries" (
"id" SERIAL,
    "tagId" INTEGER,
    "entryId" INTEGER,

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "entries" ADD FOREIGN KEY("tripId")REFERENCES "trips"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "speakers_entries" ADD FOREIGN KEY("entryId")REFERENCES "entries"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "speakers_entries" ADD FOREIGN KEY("speakerId")REFERENCES "speakers"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tags_entries" ADD FOREIGN KEY("entryId")REFERENCES "entries"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tags_entries" ADD FOREIGN KEY("tagId")REFERENCES "tags"("id") ON DELETE SET NULL ON UPDATE CASCADE;
