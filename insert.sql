INSERT INTO genre (name)
VALUES 
('Rap'),
('Pop'),
('Metall'),
('Electro'),
('Jazz');



INSERT INTO artists (name)
VALUES 
('Eminem'),
('Lady Gaga'),
('50 cent'),
('The Bloody Beetroots'),
('System of a down'),
('Steve Lacy'),
('Rammstein'),
('Kanye West');

INSERT INTO artistsGenres (genre_id, artists_id)
VALUES
(1, 1),
(2, 2),
(1, 3),
(4, 4),
(3, 5),
(5, 6),
(3, 7),
(1, 8);

INSERT INTO alboms (name, year)
VALUES
('Kamikaze', 2018),
('Born This Way',2011),
('The Kanan Tape', 2015),
('Hide', 2013),
('Toxicity', 2001),
('Gemini Rights', 2022),
('Paris', 2017),
('Ye', 2018);

INSERT INTO artistsalboms(albom_id, artists_id) 
VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

INSERT INTO songs ( name, duration , albom_id)
VALUES
('Lucky You', 349, 1),
('Born This Way', 264, 2),
('Not Alike', 293, 1),
('Bad Kids', 231, 2),
('Nigga Nigga', 282, 3),
('Too Rich for the Bitch', 181, 3),
('Albion', 345, 4),
('Raw', 223,4),
('Toxicity', 219, 5),
('Bounce', 114, 5),
('Helmet', 202, 6),
('Static', 157, 6),
('PUSSY', 501, 7),
('ENGEL', 313, 7),
('All Mine', 146, 8),
('Yikes', 189, 8);



INSERT INTO mixtape (name , year)
VALUES
('Best Rap of 2018', 2018),
('USA and German Metall', 2019),
('50 cent VS Eminem', 2020),
('Top vote Pop and Jazz', 2022),
('TOP from artists who went INSANE', 2023),
('Best music chart', 2022),
('Top CRAZIEST MUSIC', 2017),
('Hip Hop Legends', 2023);


INSERT INTO mixtapesongs (mixtape_id, song_id)
VALUES
(1, 1),
(1, 16),
(1, 15),
(2, 9),
(2, 10),
(2, 13),
(2, 14),
(3, 1),
(3, 3),
(3, 5),
(3, 6),
(4, 7),
(4, 11),
(5, 16),
(5, 13),
(6, 16),
(6, 15),
(6, 1),
(6,12),
(7, 5),
(7, 13),
(7, 10),
(8, 1),
(8 , 5),
(8, 16);

INSERT INTO alboms (name, year)
VALUES ('My way', 2020);

INSERT INTO songs ( name, duration , albom_id)
VALUES
('This is my way', 227, 9),
('Oh my...', 314, 9);

INSERT INTO artistsalboms(albom_id, artists_id) 
VALUES
(9,1);

INSERT INTO alboms (name, year)
VALUES ('Gaga Ye', 2017);

INSERT INTO songs ( name, duration , albom_id)
VALUES
('Sorry for that', 332, 10),
('YE and Gaga like baba Yaga', 217, 10);

INSERT INTO songs ( name, duration , albom_id)
VALUES
('I am Godness', 283, 10),
('Y cant stop me', 313, 10);

INSERT INTO artistsalboms(albom_id, artists_id) 
VALUES
(10,2),
(10,8);

INSERT INTO alboms (name, year)
VALUES ('50 em', 2013);

INSERT INTO songs ( name, duration , albom_id)
VALUES
('pew pew', 231, 11),
('Mystary', 175, 11),
('Gonna kill you', 175, 11);

INSERT INTO artistsalboms(albom_id, artists_id) 
VALUES
(11,1),
(11,3);




