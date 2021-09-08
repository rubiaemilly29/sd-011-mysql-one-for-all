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
FOREIGN KEY (song_id) REFERENCES songs(song_id),
CONSTRAINT PRIMARY KEY(user_id, song_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist VARCHAR(200) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.user_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES user_info(user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
CONSTRAINT PRIMARY KEY(user_id, artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(200) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album_songs(
album_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id),
CONSTRAINT PRIMARY KEY(album_id, song_id)
) engine = InnoDB;

-- * INSERINDO VALORES AS TABELAS

INSERT INTO SpotifyClone.plans (plan_id, plan, price)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO SpotifyClone.user_info (user_id, user, age, plan_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO SpotifyClone.songs (song_id, song)
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

INSERT INTO SpotifyClone.history (user_id, song_id)
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

INSERT INTO SpotifyClone.artists (artist_id, artist)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

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

INSERT INTO SpotifyClone.albums (album_id, album, artist_id)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);



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
