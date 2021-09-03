DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE payment_plans(
    plan_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(30) NOT NULL,
    price DECIMAL(4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE artists(
    artist_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
    album_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    artist_id INTEGER NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

CREATE TABLE songs(
    song_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

CREATE TABLE users(
    user_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    plan_id INTEGER NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES payment_plans (plan_id)
) engine = InnoDB;

CREATE TABLE history_reproduction(
    user_id INTEGER NOT NULL,
    song_id INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY(user_id, song_id),
    -- reproduction_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (song_id) REFERENCES songs (song_id)
) engine = InnoDB;

CREATE TABLE following_artists(
    user_id INTEGER NOT NULL,
    artist_id INTEGER NOT NULL,
    CONSTRAINT PRIMARY KEY(user_id, artist_id),
    -- following_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (artist_id) REFERENCES artists (artist_id)
) engine = InnoDB;

INSERT INTO payment_plans(name, price)
    VALUES('gratuito', 0),
    ('universitário', 5.99),
    ('familiar', 7.99);

INSERT INTO users(name, age, plan_id)
    VALUES('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 1);

INSERT INTO artists(name)
    VALUES('Freedie Shannon'),
    ('Lance Day'),
    ('Peter Strong'),
    ('Walter Phoenix');

INSERT INTO albuns(name, artist_id)
    VALUES('Envious', 4),
    ('Exuberant', 4),
    ('Hallowed Steam', 3),
    ('Incandescent', 2),
    ('Temporary Culture', 1);

INSERT INTO songs(name, album_id)
    VALUES('Soul For Us', 1),
    ('Reflections Of Magic', 1),
    ('Dance With Her Own', 1),
    ('Troubles Of My Inner Fire', 2),
    ('Time Fireworks', 2),
    ('Magic Circus', 3),
    ('Honey, So Do I', 3),
    ("Sweetie, Let's Go Wild", 3),
    ('She Knows', 3),
    ('Fantasy For Me', 4),
    ('Celebration Of More', 4),
    ('Rock His Everything', 4),
    ('Home Forever', 4),
    ('Diamond Power', 4),
    ("Honey, Let's Be Silly", 4),
    ('Thang Of Thunder', 5),
    ('Words Of Her Life', 5),
    ('Without My Streets', 5);

INSERT INTO history_reproduction(user_id, song_id)
    VALUES(1, 1),
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

INSERT INTO following_artists(user_id, artist_id)
    VALUES(1, 1),
    (1, 2),
    (1, 4),
    (2, 2),
    (2, 4),
    (3, 3),
    (3, 4),
    (4, 1);
