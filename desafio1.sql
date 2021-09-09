DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans (
plan_id INT AUTO_INCREMENT PRIMARY KEY,
type VARCHAR(15) NOT NULL,
price DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
) ENGINE = InnoDB;

CREATE TABLE singers (
singer_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albums (
album_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(150) NOT NULL,
singer_id INT NOT NULL,
FOREIGN KEY (singer_id) REFERENCES singers (singer_id)
) ENGINE = InnoDB;

CREATE TABLE songs (
song_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(150) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums (album_id)
) ENGINE = InnoDB;

CREATE TABLE following_singers (
user_id INT NOT NULL,
singer_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, singer_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (singer_id) REFERENCES singers (singer_id)
) ENGINE = InnoDB;

CREATE TABLE history (
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (song_id) REFERENCES songs (song_id)
) ENGINE = InnoDB;

INSERT INTO plans (type, price) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO users (name, age, plan_id) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO singers (name) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums (title, singer_id) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (title, album_id) VALUES
("Soul For Us", 1),
("Reflections Of Magic", 1),
("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2),
("Time Fireworks", 2),
("Magic Circus", 3),
("Honey, So Do I", 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
("Fantasy For Me", 4),
("Celebration Of More", 4),
("Rock His Everything", 4),
("Home Forever", 4),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);

INSERT INTO following_singers (user_id, singer_id) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO history (user_id, song_id) VALUES
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
