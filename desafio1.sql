DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS t_flat (
id_flat INT AUTO_INCREMENT PRIMARY KEY,
c_flat VARCHAR(100),
c_preice FLOAT
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_users (
id_user INT AUTO_INCREMENT PRIMARY KEY,
c_user VARCHAR(80) NOT NULL,
c_age INT NOT NULL,
fk_c_flat INT NOT NULL,
FOREIGN KEY(fk_c_flat) REFERENCES t_flat (id_flat)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_artists (
id_artist INT AUTO_INCREMENT PRIMARY KEY,
c_artist VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_album(
id_album INT PRIMARY KEY AUTO_INCREMENT,
c_album VARCHAR(100) NOT NULL,
fk_id_artist INT NOT NULL,
FOREIGN KEY (fk_id_artist) REFERENCEs t_artists (id_artist)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_songs(
id_songs INT PRIMARY KEY AUTO_INCREMENT,
c_songs VARCHAR(100) NOT NULL,
fk_id_album INT NOT NULL,
FOREIGN KEY (fk_id_album) REFERENCES t_album(id_album)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_h_reproductions(
fk_id_user INT NOT NULL,
fk_id_songs INT NOT NULL,
CONSTRAINT PRIMARY KEY(fk_id_user, fk_id_songs),
FOREIGN KEY (fk_id_user) REFERENCES t_users(id_user),
FOREIGN KEY (fk_id_songs) REFERENCES t_songs(id_songs)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_follow_artists(
fk_id_user INT NOT NULL,
fk_id_artist INT NOT NULL,
CONSTRAINT PRIMARY KEY (fk_id_user, fk_id_artist),
FOREIGN KEY (fk_id_user) REFERENCES t_users(id_user),
FOREIGN KEY (fk_id_artist) REFERENCES t_artists(id_artist)
) engine = InnoDB;

INSERT INTO t_flat (c_flat, c_preice)
VALUES 
('familiar', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO t_users(c_user, c_age, fk_c_flat)
VALUES 
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO t_artists(c_artist)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO t_album(c_album, fk_id_artist)
VALUES
('Envious', 2),
('Exuberant', 1),
('Hallowed Steam', 3),
('Incandescent', 2),
('Temporary Culture', 4);

INSERT INTO t_songs(c_songs, fk_id_album)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('elebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO t_h_reproductions(fk_id_user, fk_id_songs)
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

INSERT INTO t_follow_artists(fk_id_user, fk_id_artist)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);
