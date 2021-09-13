DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE  SpotifyClone;
USE SpotifyClone; 

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(20) NOT NULL,
plan_price DECIMAL(4,2) NOT NULL 
);

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(30) NOT NULL,
user_age INT NOT NULL, 
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
);

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(30) NOT NULL
);

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(30) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE musics(
music_id INT PRIMARY KEY AUTO_INCREMENT,
music_name VARCHAR(30) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

CREATE TABLE following(
user_id INT NOT NULL,
artist_id INT NOT NULL, 
CONSTRAINT PRIMARY KEY(user_id, artist_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE history(
user_id INT NOT NULL, 
music_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, music_id),
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (music_id) REFERENCES musics(music_id)
);

INSERT INTO plans(plan_name, plan_price)
VALUES ('Familiar', 7.99), ('Gratuito', 0.00), ('Universitário', 5.99);

INSERT INTO users(user_name, user_age, plan_id)
VALUES ('Bill', 20, 2), ('Cintia', 35, 1), ('Roger', 45, 3), ('Thati', 23, 3);

INSERT INTO artists(artist_name)
VALUES ('Lance Day'), ('Freedie Shannon'), ('Peter Strong'), ('Walter Phoenix') ;

INSERT INTO albums(album_name, artist_id)
VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);

INSERT INTO musics(music_name, album_id)
VALUES ('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2), ('Fantasy For Me', 4), ('Celebration Of More', 4), ('Rock His Everything', 4),
('Home Forever', 4), ('Diamond Power', 4), ('Honey, So Do I', 3), ('Thang Of Thunder', 5),
('Words Of Her Life', 5), ('Without My Streets', 5), ('Magic Circus', 3), ('Sweety, Let\'s Go Wild', 3),
('She Knows', 3), ('Honey, Let\'s Be Silly', 4);

INSERT INTO following(user_id, artist_id)
VALUES (1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);

INSERT INTO history(user_id, music_id)
VALUES (1, 1), (1, 15), (1, 10), (1, 12), (2, 9), (2, 13), (2, 2), (2, 18), (3, 4), (3, 12), (3, 15), (4, 3), 
(4, 14), (4, 7);
