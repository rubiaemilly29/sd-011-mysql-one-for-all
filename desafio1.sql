DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plan(
    plan_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plan VARCHAR(20) NOT NULL,
    plan_value FLOAT(4, 2)
) engine = InnoDB;

INSERT INTO plan(plan, plan_value)
VALUES('gratuito', 0),
      ('familiar', 7.99),
      ('universitário', 5.99);

CREATE TABLE user(
    user_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(10) NOT NULL,
    age INT(3),
    plan_id INTEGER,
    FOREIGN KEY (plan_id) REFERENCES plan (plan_id)
) engine = InnoDB;

INSERT INTO user(user_name, age, plan_id)
VALUES('Thati', 23, 1),
      ('Cintia', 35, 2),
      ('Bill', 20, 3),
      ('Roger', 45, 1);

CREATE TABLE singer(
    singer_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    singer VARCHAR(40) NOT NULL
) engine = InnoDB;

INSERT INTO singer(singer)
VALUES('Walter Phoenix'),
      ('Peter Strong'),
      ('Lance Day'),
      ('Freedie Shannon');

CREATE TABLE album(
    album_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(30) NOT NULL,
    singer_id INTEGER,
    FOREIGN KEY (singer_id) REFERENCES singer(singer_id)
) engine = InnoDB;

INSERT INTO album(album, singer_id)
VALUES('Envious', 1),
      ('Exuberant', 1),
      ('Hallowed Steam', 2),
      ('Incandescent', 3),
      ('Temporary Culture', 4);

CREATE TABLE songs(
    songs_id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    songs VARCHAR(60) NOT NULL,
    album_id INTEGER,
    singer_id INTEGER,
    FOREIGN KEY (album_id) REFERENCES album (album_id),
    FOREIGN KEY (singer_id) REFERENCES singer (singer_id)
) engine = InnoDB;

INSERT INTO songs(songs, album_id, singer_id)
VALUES('Soul For Us', 1, 1),
      ('Reflections Of Magic', 1, 1),
      ('Dance With Her Own', 1, 1),
      ('Troubles Of My InnerFire', 2, 1),
      ('Time Fireworks', 2, 1),
      ('Magic Circus', 3, 2),
      ('Honey, So Do I', 3, 2),
      ('Sweetie, Let’s Go Wild', 3, 2),
      ('She Knows', 3, 2),
      ('Fantasy For Me', 4, 3),
      ('Celebration Of More', 4, 3),
      ('Rock His Everything', 4, 3),
      ('Home Forever', 4, 3),
      ('Diamond Power', 4, 3),
      ('Honey, Let’s Be Silly', 4, 3),
      ('Thang Of Thunder', 5, 4),
      ('Words Of Her Life', 5, 4),
      ('Without My Streets', 5, 4);

CREATE TABLE followers(
    user_id INTEGER,
    singer_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (singer_id) REFERENCES singer (singer_id)
) engine = InnoDB;

INSERT INTO followers(user_id, singer_id)
VALUES(1, 1),
      (1, 3),
      (1, 4),
      (1, 1),
      (2, 3),
      (3, 1),
      (3, 2),
      (4, 4);
      
CREATE TABLE reproduction_history(
    user_id INTEGER,
    songs_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (songs_id) REFERENCES songs (songs_id)
) engine = InnoDB;

INSERT INTO reproduction_history(user_id, songs_id)
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
