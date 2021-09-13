DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans (
    planId INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    price DECIMAL(3 , 2 ) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE users (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    planId INT NOT NULL,
    FOREIGN KEY (planId)
        REFERENCES plans (planId)
)  ENGINE=INNODB;

CREATE TABLE artists (
    artistId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

CREATE TABLE albums (
    albumId INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    artistId INT NOT NULL,
    FOREIGN KEY (artistId)
        REFERENCES artists (artistId)
)  ENGINE=INNODB;

CREATE TABLE songs (
    songId INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    albumId INT NOT NULL,
    FOREIGN KEY (albumId)
        REFERENCES albums (albumId)
)  ENGINE=INNODB;

CREATE TABLE listeningHistory (
    userId INT NOT NULL,
    songId INT NOT NULL,
    CONSTRAINT PRIMARY KEY (userId , songId),
    FOREIGN KEY (userId)
        REFERENCES users (userId),
    FOREIGN KEY (songId)
        REFERENCES songs (songId)
)  ENGINE=INNODB;

CREATE TABLE followedArtists (
    userId INT NOT NULL,
    artistId INT NOT NULL,
    CONSTRAINT PRIMARY KEY (userId , artistId),
    FOREIGN KEY (userId)
        REFERENCES users (userId),
    FOREIGN KEY (artistId)
        REFERENCES artists (artistId)
)  ENGINE=INNODB;

INSERT INTO plans (`name`, price)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO users (`name`, age, planId)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artists (firstName, lastName)
VALUES
('Walter', 'Phoenix'),
('Peter', 'Strong'),
('Lance', 'Day'),
('Freedie', 'Shannon');

INSERT INTO albums (title, artistId)
VALUES 
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs (title, albumId)
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

INSERT INTO listeningHistory (userId, songId)
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

INSERT INTO followedArtists (userId, artistId)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
