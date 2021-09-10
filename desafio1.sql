DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.`plan`(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
  `plano` VARCHAR(50),
  `valor_plano` DECIMAL(4, 2) NOT NULL
) ENGINE = InnoDB;
INSERT INTO SpotifyClone.plan(plano, valor_plano) VALUES
('gratuito', '0.00'),
('familiar', '7.99'),
('universitário', '5.99');

CREATE TABLE SpotifyClone.`users`(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `age` INT NOT NULL,
  `plan_id` INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES SpotifyClone.plan(plan_id)
) ENGINE = InnoDB;
INSERT INTO SpotifyClone.`users`(`name`, `age`, `plan_id`) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE SpotifyClone.`artist`(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
  `artist_name` VARCHAR(50) NOT NULL
) ENGINE = InnoDB;
INSERT INTO SpotifyClone.`artist`(`artist_name`) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE SpotifyClone.`album`(
album_id INT PRIMARY KEY AUTO_INCREMENT,
  `album_name` VARCHAR(50),
  `artist_id` INT NOT NULL,
  FOREIGN KEY (`artist_id`) REFERENCES SpotifyClone.`artist`(`artist_id`)
)ENGINE = InnoDB;
INSERT INTO SpotifyClone.`album`(`album_name`, `artist_id`) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE SpotifyClone.`song`(
song_id INT PRIMARY KEY AUTO_INCREMENT,
  `song_name` VARCHAR(100),
  `album_id` INT NOT NULL,
  `artist_id` INT NOT NULL,
  FOREIGN KEY (`album_id`) REFERENCES SpotifyClone.`album`(`album_id`),
  FOREIGN KEY (`artist_id`) REFERENCES SpotifyClone.`artist`(`artist_id`)
)ENGINE = InnoDB;
INSERT INTO SpotifyClone.`song`(`song_name`, `album_id`, `artist_id`) VALUES
('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 2, 1),
('Time Fireworks', 2, 1),
('Magic Circus', 3, 2),
('Honey, So Do I', 3, 2),
("Sweetie, Let's Go Wild", 3, 2),
('She Knows', 3, 2),
('Fantasy For Me', 4, 3),
('Celebration Of More', 4, 3),
('Rock His Everything', 4, 3),
('Home Forever', 4, 3),
('Diamond Power', 4, 3),
("Honey, Let's Be Silly", 4, 3),
('Thang Of Thunder', 5, 4),
('Words Of Her Life', 5, 4),
('Without My Streets', 5, 4);

CREATE TABLE SpotifyClone.`follow`(
usuario_id INT NOT NULL,
  `artist_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`usuario_id`, `artist_id`),
  FOREIGN KEY (`usuario_id`) REFERENCES SpotifyClone.`users`(`usuario_id`),
  FOREIGN KEY (`artist_id`) REFERENCES SpotifyClone.`artist`(`artist_id`)
)ENGINE = InnoDB;
INSERT INTO SpotifyClone.`follow`(`usuario_id`, `artist_id`) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE SpotifyClone.`history`(
	`usuario_id` INT NOT NULL,
  `song_id` INT NOT NULL,
  CONSTRAINT PRIMARY KEY (`usuario_id`, `song_id`),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.users(usuario_id),
  FOREIGN KEY (`song_id`) REFERENCES SpotifyClone.`song`(`song_id`)
)ENGINE = InnoDB;
INSERT INTO SpotifyClone.`history`(`usuario_id`, `song_id`) VALUES
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
