DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
USE SpotifyClone;
CREATE TABLE plans (
  plan_id INT PRIMARY KEY AUTO_INCREMENT,
  plan_name VARCHAR(20) NOT NULL,
  plan_value DECIMAL(5,2) NOT NULL
  ) ENGINE = InnoDB;    
CREATE TABLE users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(30) NOT NULL,
  user_age TINYINT(2) NOT NULL,
  plan_id INT,
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) ENGINE = InnoDB; 
CREATE TABLE artists (
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_name VARCHAR(30) NOT NULL
  ) ENGINE = InnoDB; 
CREATE TABLE albuns (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  album_name VARCHAR(30) NOT NULL,
  artist_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
  ) ENGINE = InnoDB; 
CREATE TABLE songs (
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(30) NOT NULL,
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
  ) ENGINE = InnoDB; 
CREATE TABLE artist_followers (
  artist_id INT,
  user_id INT,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  CONSTRAINT PRIMARY KEY (artist_id, user_id)
  ) ENGINE = InnoDB;
CREATE TABLE reproduction_history (
  user_id INT,
  song_id INT,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id),
  CONSTRAINT PRIMARY KEY (user_id, song_id)
  ) ENGINE = InnoDB;
INSERT INTO plans(plan_name, plan_value)
VALUES
('Gratuito', 0),
('Universitário', 5.99),
('Familiar', 7.99);
INSERT INTO users(user_name, user_age)
VALUES
('Thati', 23),
('Cíntia', 35),
('Bill', 20),
('Roger', 45);
INSERT INTO artists(artist_name)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');
INSERT INTO albuns(album_name, artist_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture',4);
INSERT INTO songs(song_name, album_id)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ('Sweetie, Let''s Go Wild', 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ('Honey, Let''s Be Silly', 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);
  INSERT INTO artist_followers(user_id, artist_id)
  VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
  INSERT INTO reproduction_history(user_id, song_id)
  value
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3,16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);
  