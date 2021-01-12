-- tags
INSERT INTO tags ("id", "title") 
VALUES 
    (1, 'common'), 
    (2, 'dev'), 
    (3, 'lecture');

-- speakers
INSERT INTO speakers ("id", "name", "href") 
VALUES 
    (1, 'Frank', '_href'), 
    (2, 'Hugo', ''), 
    (3, 'Oliver', '_href');

-- trips
INSERT INTO trips ("id", "title", "description", "imgUrl", "date") 
VALUES 
    (1, 'Amsterdam', '_descriptionAmsterdam', 'https://live.staticflickr.com/2950/15303685209_9d3560f857_b.jpg', '2019-09-20'),
    (2, 'Gdansk', '_descriptionGdansk', 'https://live.staticflickr.com/1493/26504376415_772b6a3b60_b.jpg', '2020-04-10');

-- entries
INSERT INTO entries ("id", "date", "title", "description", "room", "starttime", "endtime", "tripId")
VALUES 
    (1, '2019-09-20', '_title1', '_description1', '_room1', '2019-09-20 13:45:00', '2019-09-20 14:30:00', 1),
    (2, '2019-09-21', '_title2', '_description2', '_room1', '2019-09-21 12:00:00', '2019-09-21 12:30:00', 1),
    (3, '2019-09-22', '_title3', '_description3', '_room2', '2019-09-22 14:30:00', '2019-09-22 15:00:00', 1),
    (4, '2020-04-11', '_title4', '_description4', '_room3', '2020-04-11 10:00:00', '2020-04-11 12:00:00', 2),
    (5, '2020-04-12', '_title5', '_description5', '_room3', '2020-04-12 12:00:00', '2020-04-12 12:45:00', 2);

-- speakers_entries
INSERT INTO speakers_entries ("speakerId", "entryId") 
VALUES 
    (1, 1), 
    (1, 2), 
    (2, 3),
    (2, 3),
    (1, 4),
    (2, 4),
    (3, 5);

-- tags_entries
INSERT INTO tags_entries ("tagId", "entryId") 
VALUES 
    (1, 1),
    (2, 1), 
    (2, 2),
    (1, 3),
    (3, 4),
    (1, 5),
    (3, 5);