DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans (
plan_id INT PRIMARY KEY,
plan_name VARCHAR(50) NOT NULL,
plan_price DECIMAL(5, 2) NOT NULL
);

CREATE TABLE users (
user_id INT PRIMARY KEY,
user_name VARCHAR(50) NOT NULL,
age INT NOT NULL,
plan_id INTEGER NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans (plan_id)
);

CREATE TABLE artists (
artist_id INT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL
);

CREATE TABLE albuns (
album_id INT PRIMARY KEY,
album_name VARCHAR(100) NOT NULL,
artist_id INTEGER NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);

CREATE TABLE songs (
song_id INT PRIMARY KEY NOT NULL,
song_name VARCHAR(100) NOT NULL,
artist_id INTEGER NOT NULL,
album_id INTEGER NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists (artist_id),
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

CREATE TABLE reproduction_history (
user_id INTEGER NOT NULL,
song_id INTEGER NOT NULL,
CONSTRAINT PRIMARY KEY (user_id, song_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (song_id) REFERENCES songs (song_id)
);

CREATE TABLE user_following (
user_id INTEGER NOT NULL,
artist_id INTEGER NOT NULL,
CONSTRAINT PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
);
