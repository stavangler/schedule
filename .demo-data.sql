-- tags
INSERT INTO tags ("id", "title") 
VALUES 
    (1, 'dev'), 
    (2, 'lecture');

-- speakers
INSERT INTO speakers ("id", "name", "href") 
VALUES 
    (1, 'Frank', '_href'), 
    (2, 'Hugo', null), 
    (3, 'Oliver', '_href');

-- trips
INSERT INTO trips ("id", "title", "description", "imgUrl", "date") 
VALUES 
    (1, 'Amsterdam', 'Amsterdam er den offisielle hovedstaden i Nederland. Den er landets største by og ligger i provinsen Noord-Holland. Til tross for at Amsterdam er titulær hovedstad i landet, er Haag residensby for statsoverhodet. Også landets parlament og regjering sitter i Haag, og der er også alle ambassader.', 'https://live.staticflickr.com/2950/15303685209_9d3560f857_b.jpg', '2019-09-20'),
    (2, 'Gdansk', 'Gdańsk, også kjent under sitt tyske navn Danzig; kasjubisk Gduńsk) er Polens sjette største by. Den er hovedstad i det pommerske voivodskap og Gdańsk-erkebispedømmet, og har distriktsnivåstatus. Voldsomme kamper ved slutten av annen verdenskrig utslettet nesten hele sentrum, men omfattende gjenoppbygging etter krigen har gjenskapt mye av den gamle bygningsmassen. Gdańsk er et viktig kulturelt og vitenskapelig sentrum og et betydelig transportknutepunkt i det nordlige Polen.', 'https://live.staticflickr.com/1493/26504376415_772b6a3b60_b.jpg', '2020-04-10');

-- entries
INSERT INTO entries ("id", "tripId", "date", "title", "description", "room", "starttime", "endtime")
VALUES 
    (1,  1, '2019-09-20', 'Avreise til Amsterdam (KL1204)', null, null, '2019-09-20 17:20:00', '2019-09-20 18:55:00'),
    (2,  1, '2019-09-20', 'Ankomst', null, null, '2019-09-20 18:55:00', null),
    (3,  1, '2019-09-20', 'Middag', 'https://orestistaverna.nl/en/', null, '2019-09-20 21:00:00', null),
    (4,  1, '2019-09-21', 'Sjekkliste for kunder som ønsker en bedre nettside', 'Vi går gjennom en mal som kan brukes i kundemøter', 'Van Gogh 2', '2019-09-21 09:00:00', '2019-09-21 09:15:00'),
    (5,  1, '2019-09-21', 'Velkommen', 'Velkommen, praktisk info, etc.', 'Van Gogh 1', '2019-09-21 09:00:00', '2019-09-21 09:15:00'),
    (6,  1, '2019-09-21', 'Spring Boot med Kotlin', 'Spring Boot; fra Java til Kotlin', 'Van Gogh 1', '2019-09-21 09:15:00', '2019-09-21 09:30:00'),
    (7,  1, '2019-09-21', 'Praktisk oppgave', 'To deltakere presenterer hovedfunn og kommer med innspill til forbedringer (Felles diskusjon)', 'Van Gogh 2', '2019-09-21 09:30:00', '2019-09-21 10:00:00'),
    (8,  1, '2019-09-21', 'Medisinsk simulering som et distribuert system', 'Laerdal Medical har de siste femten årene basert mye av simuleringen sin på noen få applikasjoner. Disse monolittene skulle dekke hvert sitt domene men har over tid utviklet seg til å prøve å favne over alle simuleringsdomener - med overlapping av hverandre. LM ønsket en fleksibel arkitektur som tillater rask prototyping samt klinisk nøyaktighet - dette arbeidet er påbegynt.', 'Van Gogh 1', '2019-09-21 09:30:00', '2019-09-21 10:00:00'),
    (9,  1, '2019-09-21', 'Årshjul for SoMe-kanaler i et nøtteskall', 'Vi ser på et årshjul for Facebook, et årshjul for Instagram og et årshjul for LinkedIn.', 'Van Gogh 2', '2019-09-21 10:00:00', '2019-09-21 10:30:00'),
    (10, 1, '2019-09-21', 'Echarts grafer', 'Det er vanskeleg å sjå for seg noko som ikkje kan visualiserast med ECharts!', 'Van Gogh 1', '2019-09-21 10:00:00', '2019-09-21 10:30:00'),
    (11, 1, '2019-09-21', 'Pause', null, null, '2019-09-21 10:30:00', '2019-09-21 10:45:00'),
    (12, 1, '2019-09-22', 'Lunsj', 'https://www.meneernieges.nl/reserveren/', null, '2019-09-22 12:30:00', null),
    (13, 1, '2019-09-22', 'Teambuilding', 'https://thingstodoinamsterdam.com/powerzone-bowling-minigolf-laser-tag-amsterdam/', null, '2019-09-22 15:00:00', '2019-09-22 18:0:00'),
    (14, 1, '2019-09-22', 'Middag', 'https://rongastrobar.nl/downtown/', null, '2019-09-22 21:00:00', null),
    (15, 1, '2019-09-23', 'Hjemreise til Stavanger (KL1203)', null, null, '2019-09-23 15:05:00', '2019-09-23 16:35:00'),
    (16, 2, '2020-04-10', 'Avreise til Gdansk (KL1204)', null, null, '2020-04-10 17:20:00', '2020-04-10 18:55:00'),
    (17, 2, '2020-04-10', 'Ankomst', null, null, '2020-04-10 18:55:00', null),
    (18, 2, '2020-04-10', 'Lorem Ipsum', 'https://www.nintendo.com', null, '2020-04-10 21:00:00', null),
    (19, 2, '2020-04-11', 'Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'Ut enim ad minim veniam', 'Jupiter', '2020-04-11 09:00:00', '2020-04-11 09:15:00'),
    (20, 2, '2020-04-11', 'Duis aute irure dolor in reprehenderit in voluptate', 'velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'Pluto', '2020-04-11 10:00:00', '2020-04-11 10:30:00'),
    (21, 2, '2020-04-11', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem', 'accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt', 'Jupiter', '2020-04-11 11:00:00', '2020-04-11 11:30:00'),
    (22, 2, '2020-04-12', 'Neque porro quisquam est, qui dolorem ipsum', 'quo voluptas nulla pariatur', 'Pluto', '2020-04-12 09:30:00', '2020-04-12 10:00:00'),
    (23, 2, '2020-04-12', 'Quis autem vel eum iure reprehenderit', 'quia dolor sit amet', 'Mercury', '2020-04-12 12:30:00', '2020-04-12 13:30:00'),
    (24, 2, '2020-04-12', 'Ut enim ad minima veniam, quis nostrum', 'At vero eos et accusamus et iusto odio', 'Mercury', '2020-04-12 14:00:00', '2020-04-12 16:00:00'),
    (25, 2, '2020-04-13', 'Maxime minus temporibus', null, null, '2020-04-13 10:00:00', '2020-04-13 12:00:00'),
    (26, 2, '2020-04-13', 'Hjemreise til Stavanger (KL1403)', null, null, '2020-04-13 14:00:00', '2020-04-10 16:00:00');

-- speakers_entries
INSERT INTO speakers_entries ("entryId", "speakerId") 
VALUES 
    (4, 1),
    (5, 2),
    (6, 3),
    (7, 1),
    (7, 2),
    (8, 2),
    (9, 1),
    (10, 1),
    (10, 2),
    (10, 3),
    (13, 3),
    (18, 3),
    (19, 2),
    (20, 1),
    (21, 3),
    (23, 2),
    (24, 3),
    (25, 1);

-- tags_entries
INSERT INTO tags_entries ("entryId", "tagId") 
VALUES 
    (4, 2),
    (5, 1),
    (6, 2),
    (7, 1),
    (8, 2),
    (9, 1),
    (10, 2),
    (13, 1),
    (18, 1),
    (19, 1),
    (20, 2),
    (23, 2),
    (24, 1),
    (25, 2);