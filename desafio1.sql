DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES membership_plan(plan_id)
) ENGINE = InnoDB;

CREATE TABLE membership_plan(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(50) NOT NULL,
plan_value DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE = InnoDB;

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id)
) ENGINE = InnoDB;

CREATE TABLE reproduction_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (song_id) REFERENCES songs(song_id)
) ENGINE = InnoDB;

CREATE TABLE following_artist(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) ENGINE = InnoDB;
