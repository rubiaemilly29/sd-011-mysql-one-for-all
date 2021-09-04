DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plan(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(20) NOT NULL,
cost DOUBLE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE artist(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(30) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

CREATE TABLE music(
music_id INT PRIMARY KEY AUTO_INCREMENT,
music_name VARCHAR(35) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
) ENGINE=InnoDB;

CREATE TABLE `user`(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(20) NOT NULL,
age SMALLINT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plan(plan_id)
) ENGINE=InnoDB;

CREATE TABLE reproduction_history(
user_id INT NOT NULL,
music_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, music_id),
FOREIGN KEY (user_id) REFERENCES user (user_id),
FOREIGN KEY (music_id) REFERENCES music(music_id)
) ENGINE=InnoDB;

CREATE TABLE artists_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES `user`(user_id),
FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
) ENGINE=InnoDB;

INSERT INTO plan(plan_name, cost)
VALUES ('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artist(artist_name)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album(album_name, artist_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO music(music_name, album_id)
VALUES ('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO user(user_name, age, plan_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO reproduction_history(user_id, music_id)
VALUES (1, 1),
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

INSERT INTO artists_following(user_id, artist_id)
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
