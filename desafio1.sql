DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS t_flat (
id_flat INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
c_flat VARCHAR(100),
c_preicee FLOAT(10)
);

CREATE TABLE IF NOT EXISTS t_users (
id_user INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
c_user VARCHAR(80) NOT NULL,
c_age INT NOT NULL,
fk_c_flat INT NOT NULL,
FOREIGN KEY(fk_c_flat) REFERENCES t_flat (id_flat)
);

CREATE TABLE IF NOT EXISTS t_artists (
id_artist INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
c_artist VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS t_album(
id_album INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
c_album VARCHAR(100) NOT NULL,
fk_id_artist INT NOT NULL,
FOREIGN KEY (fk_id_artist) REFERENCEs t_artists (id_artist)
);

CREATE TABLE IF NOT EXISTS t_songs(
 id_songs INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 c_songs VARCHAR(100) NOT NULL,
 fk_id_album INT NOT NULL,
 FOREIGN KEY (fk_id_album) REFERENCES t_album(id_album)
);

CREATE TABLE IF NOT EXISTS t_h_reproductions(
id_h_reproductions INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
c_h_reproductions VARCHAR(100) NOT NULL,
fk_id_user INT NOT NULL,
fk_id_songs INT NOT NULL,
FOREIGN KEY (fk_id_user) REFERENCES t_users(id_user),
FOREIGN KEY (fk_id_songs) REFERENCES t_songs(id_songs)
);

CREATE TABLE IF NOT EXISTS t_follow_artists(
id_follow_artist INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
c_follow_artists INT NOT NULL,
fk_id_user INT NOT NULL,
fk_id_artist INT NOT NULL,
FOREIGN KEY (fk_id_user) REFERENCES t_users(id_user),
FOREIGN KEY (fk_id_artist) REFERENCES t_artists(id_artist)
);
-- Error Code: 1075. Incorrect table definition; there can be only one auto column and it must be defined as a key

