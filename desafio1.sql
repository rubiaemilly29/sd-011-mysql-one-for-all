DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Artists(
    artist_id tinyint NOT NULL AUTO_INCREMENT,
    name varchar(45),
    PRIMARY KEY (artist_id)
) engine = InnoDB;

CREATE TABLE Plans(
    plan_id tinyint NOT NULL AUTO_INCREMENT,
    name varchar(45),
    value double(3, 2),
    PRIMARY KEY (plan_id)
) engine = InnoDB;

CREATE TABLE Albums(
    album_id tinyint NOT NULL AUTO_INCREMENT,
    name varchar(45),
    artist_id tinyint,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
) engine = InnoDB;

CREATE TABLE Users(
    user_id tinyint NOT NULL AUTO_INCREMENT,
    name varchar(45),
    age tinyint,
    plan_id tinyint,
    PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id) REFERENCES Plans(plan_id)
) engine = InnoDB;

CREATE TABLE Artists_Followers(
    artist_id tinyint,
    user_id tinyint,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
) engine = InnoDB;

CREATE TABLE Songs(
    song_id tinyint NOT NULL AUTO_INCREMENT,
    name varchar(45),
    album_id tinyint,
    PRIMARY KEY (song_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
) engine = InnoDB;

CREATE TABLE History(
    user_id tinyint,
    song_id tinyint,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
) engine = InnoDB;

INSERT INTO Artists (name)
VALUES
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong'),
  ('Walter Phoenix');

INSERT INTO Plans (name, value)
VALUES
  ('free', 0),
  ('student', 5.99),
  ('family', 7.99);

INSERT INTO Albums (name, artist_id)
VALUES
  ('Envious', 4),
  ('Exuberant', 4),
  ('Hallowed Steam', 3),
  ('Incandescent', 2),
  ('Temporary Culture', 1);

INSERT INTO Users (name, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

INSERT INTO Artists_Followers (artist_id, user_id)
VALUES
  (1, 1),
  (1, 4),
  (2, 1),
  (2, 2),
  (3, 3),
  (4, 1),
  (4, 2),
  (4, 3);

INSERT INTO Songs (name, album_id)
VALUES
  ('Celebration Of More', 4),
  ('Dance With Her Own', 1),
  ('Diamond Power', 4),
  ('Fantasy For Me', 4),
  ('Home Forever', 4),
  ("Honey, Let's Be Silly", 4),
  ('Honey, So Do I', 3),
  ('Magic Circus', 3),
  ('Reflections Of Magic', 1),
  ('Rock His Everything', 4),
  ('She Knows', 3),
  ('Soul For Us', 1),
  ("Sweetie, Let's Go Wild", 3),
  ('Thang Of Thunder', 5),
  ('Time Fireworks', 2),
  ('Troubles Of My Inner Fire', 2),
  ('Without My Streets', 5),
  ('Words Of Her Life', 5);

INSERT INTO History (user_id, song_id)
VALUES
  (1, 12),
  (1, 8),
  (1, 14),
  (2, 5),
  (2, 18),
  (2, 9),
  (2, 6),
  (3, 16),
  (3, 14),
  (3, 8),
  (4, 2),
  (4, 17),
  (4, 1);
