DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
    ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    PlanName VARCHAR(20) NOT NULL,
    Value DECIMAL(4,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE users(
    ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    UserName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    PlanID INTEGER NOT NULL,

    FOREIGN KEY (PlanID) REFERENCES plans (ID)
) ENGINE = InnoDB;

CREATE TABLE artists(
    ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ArtistName VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albuns(
    ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    AlbumName VARCHAR(50) NOT NULL,
    ArtistID INTEGER NOT NULL,

    FOREIGN KEY (ArtistID) REFERENCES artists (ID)
) ENGINE = InnoDB;

CREATE TABLE songs(
    ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
    SongName VARCHAR(50) NOT NULL,
    ArtistID INTEGER NOT NULL,
    AlbumID INTEGER NOT NULL,

    FOREIGN KEY (ArtistID) REFERENCES artists (ID),
    FOREIGN KEY (AlbumID) REFERENCES albuns (ID)
) ENGINE = InnoDB;

CREATE TABLE following(
    ArtistID INTEGER NOT NULL,
    UserID INTEGER NOT NULL,

    CONSTRAINT PRIMARY KEY (ArtistID, UserID),

    FOREIGN KEY (ArtistID) REFERENCES artists (ID),
    FOREIGN KEY (UserID) REFERENCES users (ID)
) ENGINE = InnoDB;

CREATE TABLE history(
    SongID INTEGER NOT NULL,
    UserID INTEGER NOT NULL,

    CONSTRAINT PRIMARY KEY (SongID, UserID),

    FOREIGN KEY (SongID) REFERENCES songs (ID),
    FOREIGN KEY (UserID) REFERENCES users (ID)
) ENGINE = InnoDB;

INSERT INTO plans (PlanName, Value)
VALUES
        ('Gratuito', 0),
        ('Familiar', 7.99),
        ('Universitário', 5.99);

INSERT INTO users (UserName, Age, PlanID)
VALUES
        ('Thati', 23, 1),
        ('Cintia', 35, 2),
        ('Bill', 20, 3),
        ('Roger', 45, 1);

INSERT INTO artists (ArtistName)
VALUES
        ('Walter Phoenix'),
        ('Peter Strong'),
        ('Lance Day'),
        ('Freedie Shannon');

INSERT INTO albuns (AlbumName, ArtistID)
VALUES
        ('Envious', 1),
        ('Exuberant', 1),
        ('Hallowed Steam', 2),
        ('Incandescent', 3),
        ('Temporary Culture', 4);

INSERT INTO songs (SongName, ArtistID, AlbumID)
VALUES
        ('Soul For Us', 1, 1),
        ('Reflections Of Magic', 1, 1),
        ('Dance With Her Own', 1, 1),
        ('Troubles Of My Inner Fire', 1, 2),
        ('Time Fireworks', 1, 2),
        ('Magic Circus', 2, 3),
        ('Honey, So Do I', 2, 3),
        ('Sweetie, Lets Go Wild', 2, 3),
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

INSERT INTO following (ArtistID, UserID)
VALUES
        (1, 1),
        (4, 1),
        (3, 1),
        (1, 2),
        (3, 2),
        (2, 3),
        (1, 3),
        (4, 4);

INSERT INTO history (SongID, UserID)
VALUES
        (1, 1),
        (6, 1),
        (14, 1),
        (16, 1),
        (13, 2),
        (17, 2),
        (2, 2),
        (15, 2),
        (4, 3),
        (16, 3),
        (6, 3),
        (3, 4),
        (18, 4),
        (11, 4);
