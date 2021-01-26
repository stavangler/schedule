-- CreateTable
CREATE TABLE "entries" (
"id" SERIAL,
    "date" TIMESTAMP(3) NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT,
    "room" TEXT,
    "starttime" TIMESTAMP(3) NOT NULL,
    "endtime" TIMESTAMP(3),
    "tripId" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "speakers" (
"id" SERIAL,
    "name" TEXT NOT NULL,
    "href" TEXT,

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
    "speakerId" INTEGER NOT NULL,
    "entryId" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tags_entries" (
"id" SERIAL,
    "tagId" INTEGER NOT NULL,
    "entryId" INTEGER NOT NULL,

    PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "entries" ADD FOREIGN KEY("tripId")REFERENCES "trips"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "speakers_entries" ADD FOREIGN KEY("entryId")REFERENCES "entries"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "speakers_entries" ADD FOREIGN KEY("speakerId")REFERENCES "speakers"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tags_entries" ADD FOREIGN KEY("entryId")REFERENCES "entries"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "tags_entries" ADD FOREIGN KEY("tagId")REFERENCES "tags"("id") ON DELETE CASCADE ON UPDATE CASCADE;
