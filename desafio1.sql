DROP database if exists SpotifyClone;
CREATE database SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plan (
	plan_id INT AUTO_INCREMENT,
    plan_name VARCHAR(30) NOT NULL,
    price FLOAT(3,2),
    PRIMARY KEY (plan_id)
);

INSERT INTO Plan (plan_name, price)
VALUE
	('gratuito', 0.00),
	('familiar', 7.99),
    ('universitário', 5.99);

CREATE TABLE User (
	user_id INT AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    plan_id INT NOT NULL,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id) REFERENCES Plan (plan_id)
);

INSERT INTO User (first_name, age, plan_id)
VALUE
	('Thati', 23, 1),
	('Cintia', 35, 2),
	('Bill', 20, 3),
	('Roger', 45, 1);

CREATE TABLE Singer (
	singer_id INT AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (singer_id)
);

INSERT INTO Singer (first_name)
VALUE
	('Walter Phoenix'),
	('Peter Strong'),
	('Lance Day'),
	('Freedie Shannon');

CREATE TABLE Album (
	album_id INT AUTO_INCREMENT,
    album_name VARCHAR(50) NOT NULL,
    singer_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (singer_id) REFERENCES Singer (singer_id)
);

INSERT INTO Album (album_name, singer_id)
VALUE
	('Envious', 1),
	('Exuberant', 1),
	('Hallowed Steam', 2),
	('Incandescent', 3),
	('Temporary Culture', 4);

CREATE TABLE Music (
	music_id INT AUTO_INCREMENT,
    music_name VARCHAR(30) NOT NULL,
    singer_id INT NOT NULL,
    album_id INT NOT NULL,
    PRIMARY KEY (music_id),
    FOREIGN KEY (singer_id) REFERENCES Singer (singer_id),
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
);

INSERT INTO Music (music_name, singer_id, album_id)
VALUE
	("Soul For Us", 1, 1),
	("Reflections Of Magic", 1, 1),
	("Dance With Her Own", 1, 1),
	("Troubles Of My Inner Fire", 1, 2),
	("Time Fireworks", 1, 2),
	("Magic Circus", 2, 3),
	("Honey, So Do I", 2, 3),
	("Sweetie, Let's Go Wild", 2, 3),
	("She Knows", 2, 3),
	("Fantasy For Me", 3, 4),
	("Celebration Of More", 3, 4),
	("Rock His Everything", 3, 4),
	("Home Forever", 3, 4),
	("Diamond Power", 3, 4),
	("Honey, Let's Be Silly", 3, 4),
	("Thang Of Thunder", 4, 5),
	("Words Of Her Life", 4, 5),
	("Without My Streets", 4, 5);

CREATE TABLE Followers (
	user_id INT NOT NULL,
    singer_id INT NOT NULL,
    PRIMARY KEY (user_id, singer_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id),
    FOREIGN KEY (singer_id) REFERENCES Singer (singer_id)
);

INSERT INTO Followers (user_id, singer_id)
VALUE
	(1, 1),
	(1, 4),
	(1, 3),
	(2, 1),
	(2, 3),
	(3, 2),
	(3, 1),
	(4, 4);


CREATE TABLE History (
	user_id INT NOT NULL,
    music_id INT NOT NULL,
    PRIMARY KEY (user_id, music_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id),
    FOREIGN KEY (music_id) REFERENCES Music (music_id)
);

INSERT INTO History (user_id, music_id)
VALUE
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
