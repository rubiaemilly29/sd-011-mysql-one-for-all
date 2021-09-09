CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE artists(
id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO artists(artist_name)
VALUES
('Zeca Pagodinho'),
('Jovelina Perola Negra'),
('Wando'),
('Fagner');

CREATE TABLE plan(
id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(50) NOT NULL,
price DOUBLE(4, 2) NOT NULL
) engine = InnoDB;

INSERT INTO plan(plan_name, price)
VALUES
('Gold', 5.90),
('Silver', 4.90),
('Bronze', 3.90);

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(50) NOT NULL,
age TINYINT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY (plan_id) REFERENCES plan(id)
) engine = InnoDB;

INSERT INTO users(user_name, age, plan_id)
VALUES
('João', 48, 1),
('Maria', 35, 2),
('Francisco', 18, 3),
('Ligia', 23, 2);

CREATE TABLE album(
id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(50) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY (artist_id) REFERENCES artists(id)
) engine = InnoDB;

INSERT INTO album(album_name, artist_id)
VALUES
('Ser humano', 1),
('Roda de samba', 2),
('Você é luz', 3),
('Romance no deserto', 4),
('Sangue bom', 2);

CREATE TABLE songs(
id 	INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(id)
) engine = InnoDB;

INSERT INTO songs(song_name, album_id)
VALUES
('Mangas e panos', 1),
('Samba na cozinha', 1),
('Luz do repente', 2),
('Sorriso aberto', 2),
('No mesmo manto', 2),
('Confusão na horta', 2),
('Emoções', 3),
('Senhorita', 3),
('Deslizes', 4),
('Lua no Leblon', 4);

CREATE TABLE historic(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (user_id, song_id),
FOREIGN KEY (song_id) REFERENCES songs(id),
FOREIGN KEY (user_id) REFERENCES users(id)
) engine = InnoDB;

INSERT INTO historic(user_id, song_id)
VALUES
(1, 1), (1, 6), (2, 10), (2, 8), (3, 4), (3, 5), (4, 3), (4, 7), (1, 9), (2, 6), (3, 7), (4, 8), (2, 1);

CREATE TABLE followers(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (user_id, artist_id),
FOREIGN KEY (artist_id) REFERENCES artists(id),
FOREIGN KEY (user_id) REFERENCES users(id)
) engine = InnoDB;

INSERT INTO followers(user_id, artist_id)
VALUES
(1, 4), (1, 2), (2, 4), (2, 1), (3, 1), (3, 4), (4, 2), (4, 1);
