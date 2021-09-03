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
id_h_reproductions INT PRIMARY KEY AUTO_INCREMENT,
c_h_reproductions VARCHAR(100) NOT NULL,
fk_id_user INT NOT NULL,
fk_id_songs INT NOT NULL,
FOREIGN KEY (fk_id_user) REFERENCES t_users(id_user),
FOREIGN KEY (fk_id_songs) REFERENCES t_songs(id_songs)
) engine = InnoDB;

CREATE TABLE IF NOT EXISTS t_follow_artists(
id_follow_artist INT AUTO_INCREMENT PRIMARY KEY,
c_follow_artists INT NOT NULL,
fk_id_user INT NOT NULL,
fk_id_artist INT NOT NULL,
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
('Marlon Ramos', 24, 1),
('Diogo Algusto', 27, 2),
('Josan Johnata', 28, 3),
('Bruno Duarte', 38, 1);

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
('Soul For Us', 3),
('Reflections Of Magic', 4),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 1),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 2),
("Sweetie, Let's Go Wild", 2),
('She Knows', 3),
('Fantasy For Me', 1),
('elebration Of More', 1),
('Rock His Everything', 3),
('Home Forever', 5),
('Diamond Power', 3),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 2),
('"Words Of Her Life', 1),
('Without My Streets', 5);

INSERT INTO t_h_reproductions(c_h_reproductions, fk_id_user, fk_id_songs)
VALUES
('Soul For Us', 3, 4),
('Magic Circus', 2, 1),
('Diamond Power', 4, 2),
('Words Of Her Life', 1, 3),
('Home Forever', 1, 3),
('Words Of Her Life', 4, 3),
('Reflections Of Magic', 1, 4),
("Honey, Let's Be Silly", 2, 3),
('Troubles Of My Inner Fire', 1, 3),
('Thang Of Thunder', 4, 3),
('Magic Circus', 2, 2),
('Dance With Her Own', 1, 2),
('Without My Streets', 3, 4),
('Celebration Of More', 4, 1);

INSERT INTO t_follow_artists(c_follow_artists, fk_id_user, fk_id_artist)
VALUES
(1, 2, 2),
(4, 3, 2),
(2, 1, 1),
(3, 4, 4),
(2, 3, 2),
(4, 2, 3),
(1, 4, 2),
(3, 2, 2);
