DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
use SpotifyClone;

CREATE TABLE IF NOT EXISTS SpotifyClone.plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(200) NOT NULL,
price DECIMAL(4,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.user_info(
user_id INT PRIMARY KEY AUTO_INCREMENT,
`user` VARCHAR(200) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.user_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_info(user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
CONSTRAINT PRIMARY KEY(user_id, artist_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(200) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.album_songs(
album_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id),
CONSTRAINT PRIMARY KEY(album_id, song_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.history(
history_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_info(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
);

-- * INSERINDO VALORES AS TABELAS

INSERT INTO SpotifyClone.plans (plan, price)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.user_info (user, age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.songs (song)
VALUES
('Soul For Us'),
('Reflections Of Magic'),
('Dance With Her Own'),
('Troubles Of My Inner Fire'),
('Time Fireworks'),
('Magic Circus'),
('Honey, So Do I'),
("Sweetie, Let's Go Wild"),
('She Knows'),
('Fantasy For Me'),
('Celebration Of More'),
('Rock His Everything'),
('Home Forever'),
('Diamond Power'),
("Honey, Let's Be Silly"),
('Thang Of Thunder'),
('Words Of Her Life'),
('Without My Streets');

INSERT INTO SpotifyClone.artists (artist)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.user_following (user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO SpotifyClone.albums (album, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);



INSERT INTO SpotifyClone.album_songs (album_id, song_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 16),
(5, 17),
(5, 18);

INSERT INTO SpotifyClone.history(user_id, song_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2 ,17),
(2, 2),
(2, 15),
(3, 4),
(3, 6),
(3, 16),
(4, 3),
(4, 11),
(4, 18);

select count(history_id) from SpotifyClone.history;