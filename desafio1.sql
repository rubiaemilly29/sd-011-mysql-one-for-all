DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.subscription_plan(
subs_id INT NOT NULL AUTO_INCREMENT,
subs_name VARCHAR(14) NOT NULL,
subs_price DOUBLE NOT NULL,
CONSTRAINT PRIMARY KEY(subs_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.users(
user_id INT NOT NULL AUTO_INCREMENT,
user_name VARCHAR(20) NOT NULL,
user_age TINYINT UNSIGNED,
user_subs INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id),
FOREIGN KEY (user_subs) REFERENCES SpotifyClone.subscription_plan (subs_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artists(
art_id INT NOT NULL AUTO_INCREMENT,
art_name VARCHAR(25) NOT NULL,
CONSTRAINT PRIMARY KEY(art_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.user_follows_artist(
user_id INT NOT NULL,
art_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, art_id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (user_id),
FOREIGN KEY (art_id) REFERENCES SpotifyClone.artists (art_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albums(
album_id INT NOT NULL AUTO_INCREMENT,
album_name VARCHAR(25) NOT NULL,
art_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(album_id),
FOREIGN KEY (art_id) REFERENCES SpotifyClone.artists (art_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.songs(
song_id INT NOT NULL AUTO_INCREMENT,
song_name VARCHAR(25) NOT NULL,
album_id INT,
CONSTRAINT PRIMARY KEY(song_id),
FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (album_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.play_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY (user_id) REFERENCES SpotifyClone.users (user_id),
FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs (song_id)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.subscription_plan (subs_name, subs_price) VALUES
('gratuito', 0.00),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO SpotifyClone.users (user_name, user_age, user_subs) VALUES
('Thati', 21, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO SpotifyClone.artists (art_name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.user_follows_artist (user_id, art_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO SpotifyClone.albums (album_name, art_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.songs (song_name, album_id) VALUES
('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2),
('Magic Circus', 3), ('Honey, So Do I', 3), ("Sweetie, Let's Go Wild", 3), ('She Knows', 3),
('Fantasy For Me', 4), ('Celebration Of More', 4), ('Rock His Everything', 4), ('Home Forever', 4),
('Diamond Power', 4), ("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5), ('Words Of Her Life', 5), ('Without My Streets', 5);

INSERT INTO SpotifyClone.play_history (user_id, song_id) VALUES
(1, 1), (1, 6), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6),
(4, 3), (4, 18), (4, 11);
