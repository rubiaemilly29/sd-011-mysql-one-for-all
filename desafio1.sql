DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artists(
    artist_id INT AUTO_INCREMENT,
    artist_name VARCHAR(255) NOT NULL,
    CONSTRAINT PRIMARY KEY (artist_id)
) engine = InnoDB;

CREATE TABLE albums(
    album_id INT AUTO_INCREMENT,
    album_name VARCHAR(255) NOT NULL,
    artist_id INT,
    CONSTRAINT PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
    song_id INT AUTO_INCREMENT,
    song_name VARCHAR(255) NOT NULL,
    artist_id INT,
    album_id INT,
    PRIMARY KEY (song_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE plans(
    plan_id INT AUTO_INCREMENT,
    plan_type VARCHAR(255) NOT NULL,
    plan_value DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (plan_id)
) engine = InnoDB;

CREATE TABLE users(
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(255) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT,
    CONSTRAINT PRIMARY KEY (user_id),
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE followers(
	artist_id INT,
    user_id INT,
    CONSTRAINT PRIMARY KEY (artist_id, user_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
) engine = InnoDB;

CREATE TABLE history(
	user_id INT,
	song_id INT,
    CONSTRAINT PRIMARY KEY (user_id, song_id),
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
) engine = InnoDB;

INSERT INTO artists (artist_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO albums (album_name, artist_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO songs (song_name, artist_id, album_id)
VALUES
  ('Soul For Us', 1, 1),
  ('Reflections Of Magic', 1, 1),
  ('Dance With Her Own', 1, 1),
  ('Troubles Of My Inner Fire', 1, 2),
  ('Time Fireworks', 1, 2),
  ('Magic Circus', 2, 3),
  ('Honey, So Do I', 2, 3),
  ("Sweetie, Let's Go Wild", 2, 3),
  ('She Knows', 2, 3),
  ('Fantasy For Me', 3, 4),
  ('Celebration Of More', 3, 4),
  ('Rock His Everything', 3, 4),
  ('Home Forever', 3, 4),
  ('Diamond Power', 3, 4),
  ("Honey, Let's Be Silly", 3, 4),
  ('Thang Of Thunder', 4, 5),
  ('Words Of Her Life', 4, 5),
  ('Without My Streets', 4, 5);
  
INSERT INTO plans (plan_type, plan_value)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);
  
INSERT INTO `users` (user_name, user_age, plan_id) 
VALUES
	('Thati',23,1),
	('Cintia',35,2),
    ('Bill',20,3),
    ('Roger',45,1);

INSERT INTO `history`
VALUES
	(1,1),
    (2,2),
    (4,3),
    (3,4),
    (1,6),
    (3,6),
    (4,11),
    (2,13),
    (1,14),
    (2,15),
    (1,16),
    (3,16),
    (2,17),
    (4,18);
    
INSERT INTO `followers`
VALUES
	(1,1),
    (2,1),
    (3,1),
    (3,2),
    (1,3),
    (2,3),
    (1,4),
    (4,4);
