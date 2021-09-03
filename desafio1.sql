DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

-- Creating PLANS table into SpotifyClone
-- PLANS		
-- plan_id	plan_name	plan_price
-- 1	gratuito	0
-- 2	familiar	7.99
-- 3	universitario	5.99

CREATE TABLE SpotifyClone.PLANS(
plan_id	INTEGER NOT NULL AUTO_INCREMENT,
plan_name	VARCHAR(100) NOT NULL,
plan_price	DECIMAL(10,2) NOT NULL,
PRIMARY KEY (plan_id)
)
ENGINE = InnoDB;

-- Inserting data into PLANS table

INSERT INTO SpotifyClone.PLANS (plan_name, plan_price)
VALUES ('gratuito', 0), ('familiar', 7.99), ('universitario', 5.99);


-- Creating USERS table into SpotifyClone
-- USERS			
-- user_id	user_name	user_age	plan_id
-- 1	Thati	23	1
-- 2	Cintia	35	2
-- 3	Bill	20	3
-- 4	Roger	45	1
CREATE TABLE SpotifyClone.USERS(
user_id	INTEGER NOT NULL AUTO_INCREMENT,
user_name	VARCHAR(100) NOT NULL,
user_age	INTEGER NOT NULL,
plan_id	INTEGER NOT NULL,
PRIMARY KEY (user_id),
FOREIGN KEY (plan_id) REFERENCES SpotifyClone.PLANS(plan_id)
)ENGINE = InnoDB;

-- Inserting data into USERS table
INSERT INTO SpotifyClone.USERS (user_name, user_age, plan_id)
VALUES ('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

-- Creating Artist Table into SpotifyClone
-- ARTIST	
-- artist_id	artist_name
-- 1	Walter Phoenix
-- 2	Peter Strong
-- 3	Lance Day
-- 4	Freedie Shannon

CREATE TABLE SpotifyClone.ARTISTS(
artist_id	INTEGER NOT NULL AUTO_INCREMENT,
artist_name	VARCHAR(100) NOT NULL,
PRIMARY KEY (artist_id)
)ENGINE = InnoDB;

-- Inserting data into ARTIST table
INSERT INTO SpotifyClone.ARTISTS (artist_name)
VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');


-- -- Creating Album Table into SpotifyClone
-- ALBUMS		
-- album_id	album_name	artist_id
-- 1	Envious	1
-- 2	Exuberant	1
-- 3	Hallowed Steam	2
-- 4	Incandescent	3
-- 5	Temporary Culture	4

CREATE TABLE SpotifyClone.ALBUMS(
album_id	INTEGER NOT NULL AUTO_INCREMENT,
album_name	VARCHAR(100) NOT NULL,
artist_id	INTEGER NOT NULL,
PRIMARY KEY (album_id),
FOREIGN KEY (artist_id) REFERENCES SpotifyClone.ARTISTS(artist_id) 
)ENGINE = InnoDB;

-- Inserting data into ALBUM table
INSERT INTO SpotifyClone.ALBUMS (album_name, artist_id)
VALUES 
('Envious', 1), 
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

-- Creating SONGS Table into SpotifyClone
-- SONGS		
-- song_id	song_name	album_id
-- 1	Soul For Us	1
-- 2	Reflections of Magic	1
-- 3	Dance With Her Own	1
-- 4	Troubles Of My Inner Fire	2
-- 5	Time Fireworks	2
-- 6	Magic Circus	3
-- 7	Honey, So Do I	3
-- 8	Sweetie, Let’s Go Wild	3
-- 9	She Knows	3
-- 10	Fantasy For Me	4
-- 11	Celebration Of More	4
-- 12	Rock His Everything	4
-- 13	Home Forever	4
-- 14	Diamond Power	4
-- 15	Honey, Let’s Be Silly	4
-- 16	Thang Of Thunder	5
-- 17	Words Of Her Life	5
-- 18	Without My Streets	5

CREATE TABLE SpotifyClone.SONGS(
song_id	INTEGER NOT NULL AUTO_INCREMENT,
song_name	VARCHAR(100) NOT NULL,
album_id	INTEGER NOT NULL,
PRIMARY KEY (song_id),
FOREIGN KEY (album_id) REFERENCES SpotifyClone.ALBUMS(album_id)
)ENGINE = InnoDB;

-- Inserting data into SONGS table
INSERT INTO SpotifyClone.SONGS (song_name, album_id)
VALUES
('Soul For Us', 1),
('Reflections of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let’s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let’s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);


-- Creating Following Artists Table into SpotifyClone
-- FOLLOWING_ARTISTS	
-- user_id	artist_id
-- 1	1
-- 1	4
-- 1	3
-- 2	1
-- 2	3
-- 3	2
-- 3	1
-- 4	4

CREATE TABLE SpotifyClone.FOLLOWING_ARTISTS(
user_id	INT NOT NULL,
artist_id	INT NOT NULL,
PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.USERS(user_id),
FOREIGN KEY (artist_id) REFERENCES SpotifyClone.ARTISTS(artist_id)
)ENGINE = InnoDB;

-- Inserting data into FOLLOWING_ARTISTS table
INSERT INTO SpotifyClone.FOLLOWING_ARTISTS (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);


-- Creating Listening History Table into SpotifyClone
-- LISTENING_HISTORY	
-- user_id	song_id
-- 1	1
-- 1	6
-- 1	14
-- 1	16
-- 2	13
-- 2	17
-- 2	2
-- 2	15
-- 3	4
-- 3	16
-- 3	6
-- 4	3
-- 4	18
-- 4	11


CREATE TABLE SpotifyClone.LISTENING_HISTORY(
user_id	INTEGER NOT NULL,
song_id	INTEGER NOT NULL,
PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.USERS(user_id),
FOREIGN KEY (song_id) REFERENCES SpotifyClone.SONGS(song_id)
)ENGINE = InnoDB;

-- Inserting data into LISTENING_HISTORY table
INSERT INTO SpotifyClone.LISTENING_HISTORY (user_id, song_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
