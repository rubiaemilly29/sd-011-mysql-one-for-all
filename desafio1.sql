DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plan(
    plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan VARCHAR(20) NOT NULL,
    plan_value DECIMAL(3,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Artist(
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Album(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    artist_id INT DEFAULT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id)
) engine = InnoDB;

CREATE TABLE User(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    plan_id int NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES Plan(plan_id)
) engine = InnoDB;

CREATE TABLE Song(
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album(album_id)
) engine = InnoDB;

CREATE TABLE Artist_followers(
    artist_id INT NOT NULL,
    user_id INT NOT NULL, 
    CONSTRAINT PRIMARY KEY (artist_id, user_id),
    FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
) engine = InnoDB;

CREATE TABLE Reproduction_history(
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (song_id) REFERENCES Song(song_id)
) engine = InnoDB;

INSERT INTO Plan (plan, plan_value)
VALUES
    ('gratuito', 0),
    ('familiar', 7.99),
    ('universitário', 5.99);

INSERT INTO Artist (name)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO Album (title, artist_id)
VALUES
    ('Envious', (SELECT artist_id FROM Artist WHERE name = 'Walter Phoenix')),
    ('Exuberant', (SELECT artist_id FROM Artist WHERE name = 'Walter Phoenix')),
    ('Hallowed Steam', (SELECT artist_id FROM Artist WHERE name = 'Peter Strong')),
    ('Incandescent', (SELECT artist_id FROM Artist WHERE name = 'Lance Day')),
    ('Temporary Culture', (SELECT artist_id FROM Artist WHERE name = 'Freedie Shannon'));

INSERT INTO User (name, age, plan_id)
VALUES
    ('Thati', 23, (SELECT plan_id FROM Plan WHERE plan = 'gratuito')),
    ('Cintia', 35, (SELECT plan_id FROM Plan WHERE plan = 'familiar')),
    ('Bill', 20, (SELECT plan_id FROM Plan WHERE plan = 'universitário')),
    ('Roger', 45, (SELECT plan_id FROM Plan WHERE plan = 'gratuito'));

INSERT INTO Song (name, album_id)
VALUES
    ('Soul For Us', (SELECT album_id FROM Album WHERE title = 'Envious')),
    ('Reflections Of Magic', (SELECT album_id FROM Album WHERE title = 'Envious')),
    ('Dance With Her Own', (SELECT album_id FROM Album WHERE title = 'Envious')),
    ('Troubles Of My Inner Fire', (SELECT album_id FROM Album WHERE title = 'Exuberant')),
    ('Time Fireworks', (SELECT album_id FROM Album WHERE title = 'Exuberant')),
    ('Magic Circus', (SELECT album_id FROM Album WHERE title = 'Hallowed Steam')),
    ('Honey, So Do I', (SELECT album_id FROM Album WHERE title = 'Hallowed Steam')),
    ("Sweetie, Let's Go Wild", (SELECT album_id FROM Album WHERE title = 'Hallowed Steam')),
    ('She Knows', (SELECT album_id FROM Album WHERE title = 'Hallowed Steam')),
    ('Fantasy For Me', (SELECT album_id FROM Album WHERE title = 'Incandescent')),
    ('Celebration Of More', (SELECT album_id FROM Album WHERE title = 'Incandescent')),
    ('Rock His Everything', (SELECT album_id FROM Album WHERE title = 'Incandescent')),
    ('Home Forever', (SELECT album_id FROM Album WHERE title = 'Incandescent')),
    ('Diamond Power', (SELECT album_id FROM Album WHERE title = 'Incandescent')),
    ("Honey, Let's Be Silly", (SELECT album_id FROM Album WHERE title = 'Incandescent')),
    ("Thang Of Thunder", (SELECT album_id FROM Album WHERE title = 'Temporary Culture')),
    ("Words Of Her Life", (SELECT album_id FROM Album WHERE title = 'Temporary Culture')),
    ("Without My Streets", (SELECT album_id FROM Album WHERE title = 'Temporary Culture'));
    
INSERT INTO Artist_followers (artist_id, user_id)
VALUES
    ((SELECT artist_id FROM Artist WHERE name = 'Walter Phoenix'),
    (SELECT user_id FROM User WHERE name = 'Thati')),
    ((SELECT artist_id FROM Artist WHERE name = 'Walter Phoenix'),
    (SELECT user_id FROM User WHERE name = 'Cintia')),
    ((SELECT artist_id FROM Artist WHERE name = 'Walter Phoenix'),
    (SELECT user_id FROM User WHERE name = 'Bill')),
    ((SELECT artist_id FROM Artist WHERE name = 'Peter Strong'),
    (SELECT user_id FROM User WHERE name = 'Bill')),
    ((SELECT artist_id FROM Artist WHERE name = 'Lance Day'),
    (SELECT user_id FROM User WHERE name = 'Thati')),
    ((SELECT artist_id FROM Artist WHERE name = 'Lance Day'),
    (SELECT user_id FROM User WHERE name = 'Cintia')),
    ((SELECT artist_id FROM Artist WHERE name = 'Freedie Shannon'),
    (SELECT user_id FROM User WHERE name = 'Thati')),
    ((SELECT artist_id FROM Artist WHERE name = 'Freedie Shannon'),
    (SELECT user_id FROM User WHERE name = 'Roger'));
    
INSERT INTO Reproduction_history (user_id, song_id)
VALUES
    ((SELECT user_id FROM User WHERE name = 'Thati'),
    (SELECT song_id FROM Song WHERE name = 'Soul For Us')),
    ((SELECT user_id FROM User WHERE name = 'Thati'),
    (SELECT song_id FROM Song WHERE name = 'Magic Circus')),
    ((SELECT user_id FROM User WHERE name = 'Thati'),
    (SELECT song_id FROM Song WHERE name = 'Diamond Power')),
    ((SELECT user_id FROM User WHERE name = 'Thati'),
    (SELECT song_id FROM Song WHERE name = 'Thang Of Thunder')),
    ((SELECT user_id FROM User WHERE name = 'Cintia'),
    (SELECT song_id FROM Song WHERE name = 'Home Forever')),
    ((SELECT user_id FROM User WHERE name = 'Cintia'),
    (SELECT song_id FROM Song WHERE name = 'Words Of Her Life')),
    ((SELECT user_id FROM User WHERE name = 'Cintia'),
    (SELECT song_id FROM Song WHERE name = 'Reflections Of Magic')),
    ((SELECT user_id FROM User WHERE name = 'Cintia'),
    (SELECT song_id FROM Song WHERE name = "Honey, Let's Be Silly")),
    ((SELECT user_id FROM User WHERE name = 'Bill'),
    (SELECT song_id FROM Song WHERE name = 'Troubles Of My Inner Fire')),
    ((SELECT user_id FROM User WHERE name = 'Bill'),
    (SELECT song_id FROM Song WHERE name = 'Thang Of Thunder')),
    ((SELECT user_id FROM User WHERE name = 'Bill'),
    (SELECT song_id FROM Song WHERE name = 'Magic Circus')),
    ((SELECT user_id FROM User WHERE name = 'Roger'),
    (SELECT song_id FROM Song WHERE name = 'Dance With Her Own')),
    ((SELECT user_id FROM User WHERE name = 'Roger'),
    (SELECT song_id FROM Song WHERE name = 'Without My Streets')),
    ((SELECT user_id FROM User WHERE name = 'Roger'),
    (SELECT song_id FROM Song WHERE name = 'Celebration Of More'));
