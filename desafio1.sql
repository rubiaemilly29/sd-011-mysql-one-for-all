DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan VARCHAR(200) NOT NULL,
price DECIMAL(4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.user_info(
user_id INT PRIMARY KEY AUTO_INCREMENT,
`user` VARCHAR(200) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song VARCHAR(200) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.history(
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_info(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(200) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.user_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_info(user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(200) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists_album(
artist_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album_songs(
album_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

-- * INSERINDO VALORES AS TABELAS

INSERT INTO Users (User_id, User, Age)
VALUES
(1, 'Thati', 23),
(2, 'Cintia', 35),
(3, 'Bill', 20),
(4, 'Roger', 45);

INSERT INTO Plans (Plan_id, Plan, Price)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO User_plan (User_id, Plan_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);

INSERT INTO AllSongs (Songs_id, Songs)
VALUES
(1, 'Soul For Us'),
(2, 'Reflections Of Magic'),
(3, 'Dance With Her Own'),
(4, 'Troubles Of My Inner Fire'),
(5, 'Time Fireworks'),
(6, 'Magic Circus'),
(7, 'Honey, So Do I'),
(8, "Sweetie, Let's Go Wild"),
(9, 'She Knows'),
(10, 'Fantasy For Me'),
(11, 'Celebration Of More'),
(12, 'Rock His Everything'),
(13, 'Home Forever'),
(14, 'Diamond Power'),
(15, "Honey, Let's Be Silly"),
(16, 'Thang Of Thunder'),
(17, 'Words Of Her Life'),
(18, 'Without My Streets');

INSERT INTO Songs_history (User_id, Songs_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 16),
(3, 4),
(3, 6),
(4, 3),
(4, 18),
(4, 11);

INSERT INTO Albums_Songs (Album_id, Songs_id)
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

INSERT INTO Artist_history (User_id, Artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO Albums (Album_id, Album)
VALUES
(1, 'Envious'),
(2, 'Exuberant'),
(3, 'Hallowed Steam'),
(4, 'Incandescent'),
(5, 'Temporary Culture');

INSERT INTO Artists (Artist_id, Artist)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO Albums_artists (Album_id, Artist_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

INSERT INTO Artists_Songs (Artist_id, Songs_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(4, 16),
(4, 17),
(4, 18);
