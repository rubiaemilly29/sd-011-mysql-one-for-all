DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS t_flat (
id_flat INT AUTO_INCREMENT PRIMARY KEY,
c_flat VARCHAR(100),
c_preice DECIMAL(4,2)
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
('Basico', 8),
('Normal', 12.6),
('Premium', 15);

INSERT INTO t_users(c_user, c_age, fk_c_flat)
VALUES 
('Marlon Ramos', 24, 1),
('Diogo Algusto', 27, 2),
('Josan Johnata', 28, 3),
('Bruno Duarte', 38, 1);

INSERT INTO t_artists(c_artist)
VALUES
('Post Malone'),
('Ivete'),
('Thiaguinho'),
('Luan');

INSERT INTO t_album(c_album, fk_id_artist)
VALUES
('Album 1', 2),
('Album 2', 1),
('Album 3', 3),
('Album 4', 2);

INSERT INTO t_songs(c_songs, fk_id_album)
VALUES
('Musica 1', 3),
('Musica 2', 4),
('Musica 3', 1),
('Musica 4', 2);

INSERT INTO t_h_reproductions(c_h_reproductions, fk_id_user, fk_id_songs)
VALUES
('Musica 1', 3, 4),
('Musica 4', 2, 1),
('Musica 3', 4, 2),
('Musica 2', 1, 3);

INSERT INTO t_follow_artists(c_follow_artists, fk_id_user, fk_id_artist)
VALUES
(12, 3, 2),
(20, 2, 1),
(10, 1, 4),
(5, 2, 2);
