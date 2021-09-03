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

CREATE TABLE Albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_title VARCHAR(50) NOT NULL,
performer_id INT NOT NULL,
FOREIGN KEY (performer_id) REFERENCES Performers(performer_id)
);

CREATE TABLE Songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_title VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
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

INSERT INTO Albuns(album_title, performer_id)
VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO Songs(song_title, album_id)
VALUES
("Soul For Us", 1),
("Reflections Of Magic", 1),
("Dance With Her Own", 1),
("Troubles Of My Inner Fire", 2),
("Time Fireworks", 2),
("Magic Circus", 3),
("Honey, So Do I", 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
("Fantasy For Me", 4),
("Celebration Of More", 4),
("Rock His Everything", 4),
("Home Forever", 4),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang Of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);

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
