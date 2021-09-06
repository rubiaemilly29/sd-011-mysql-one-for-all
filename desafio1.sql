DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan VARCHAR(255) NOT NULL,
  value DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist VARCHAR(255) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(255) NOT NULL,
  artist_id INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE musics(
  music_id INT PRIMARY KEY AUTO_INCREMENT,
  music VARCHAR(255) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE history(
  user_id INT NOT NULL,
  music_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id, music_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (music_id) REFERENCES musics(music_id)
) engine = InnoDB;

CREATE TABLE follow(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

INSERT INTO plans (plan, value)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO artists (artist)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO albums (album, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

INSERT INTO users (user, age, plan_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO musics (music, album_id)
VALUES
  ('Celebration Of More', 4),
  ('Dance With Her Own', 1),
  ('Diamond Power', 4),
  ('Home Forever', 4),
  ("Honey, Let's Be Silly", 4),
  ('Magic Circus', 3),
  ('Reflections Of Magic', 1),
  ('Soul For Us', 1),
  ('Thang Of Thunder', 5),
  ('Troubles Of My Inner Fire', 2),
  ('Without My Streets', 5),
  ('Words Of Her Life', 5),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Rock His Everything', 4);

INSERT INTO history (user_id, music_id)
VALUES
  (1, 8),
  (1, 6),
  (1, 3),
  (1, 9),
  (2, 4),
  (2, 12),
  (2, 7),
  (3, 10),
  (3, 9),
  (3, 6),
  (4, 2),
  (4, 11),
  (4, 1);

INSERT INTO follow (user_id, artist_id)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);
