CREATE SCHEMA IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE Spotify_Subscription(
subscription_id INT PRIMARY KEY AUTO_INCREMENT,
subscription_title VARCHAR(50) NOT NULL,
subscription_value DECIMAL(4,2) NOT NULL
);

CREATE TABLE Users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(50) NOT NULL,
user_age INT NOT NULL,
subscription_id INT NOT NULL,
FOREIGN KEY (subscription_id) REFERENCES Spotify_Subscription(subscription_id)
);

CREATE TABLE Performers(
performer_id INT PRIMARY KEY AUTO_INCREMENT,
performer_name VARCHAR(50) NOT NULL
);

CREATE TABLE Songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_title VARCHAR(50) NOT NULL
);

CREATE TABLE Albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_title VARCHAR(50) NOT NULL,
performer_id INT NOT NULL,
FOREIGN KEY (performer_id) REFERENCES Performers(performer_id)
);

CREATE TABLE Followed_Performers(
user_id INT NOT NULL,
performer_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (performer_id) REFERENCES Performers(performer_id),
CONSTRAINT PK_Followed_Performers PRIMARY KEY (user_id, performer_id)
);

CREATE TABLE Songs_Historic(
user_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id),
CONSTRAINT PK_Songs_Historic PRIMARY KEY (user_id, song_id)
);

CREATE TABLE Album_Songs(
album_id INT NOT NULL,
song_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albuns(album_id),
FOREIGN KEY (song_id) REFERENCES Songs(song_id),
CONSTRAINT PK_Album_Songs PRIMARY KEY (album_id, song_id)
);

INSERT INTO Spotify_Subscription(subscription_title, subscription_value)
VALUES
("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

INSERT INTO Users(user_name,user_age,subscription_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Performers(performer_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Songs(song_title)
VALUES
("Soul For Us"),
("Reflections Of Magic"),
("Dance With Her Own"),
("Troubles Of My Inner Fire"),
("Time Fireworks"),
("Magic Circus"),
("Honey, So Do I"),
("Sweetie, Let's Go Wild"),
("She Knows"),
("Fantasy For Me"),
("Celebration Of More"),
("Rock His Everything"),
("Home Forever"),
("Diamond Power"),
("Honey, Let's Be Silly"),
("Thang Of Thunder"),
("Words Of Her Life"),
("Without My Streets");

INSERT INTO Albuns(album_title, performer_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO Album_Songs(album_id, song_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(4, 15),
(5, 16),
(5, 17),
(5, 18);

INSERT INTO Songs_Historic(user_id, song_id)
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

INSERT INTO Followed_Performers(user_id, performer_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 3),
(4, 4);
