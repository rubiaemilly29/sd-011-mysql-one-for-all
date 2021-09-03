DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) UNIQUE NOT NULL,
  valor DECIMAL(5, 2) NOT NULL DEFAULT 0
) engine = InnoDB;

CREATE TABLE Usuario(
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario VARCHAR(50) UNIQUE NOT NULL,
  idade SMALLINT NOT NULL,
  plano_id INT NOT NULL DEFAULT 0,
  FOREIGN KEY (plano_id) REFERENCES Plano(plano_id)
) engine = InnoDB;

CREATE TABLE Artista(
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Usuario_Artista(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES Artista(artista_id),
  CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
) engine = InnoDB;

CREATE TABLE Album(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES Artista(artista_id)
) engine = InnoDB;

CREATE TABLE Musica(
  musica_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50),
  album_id INT,
  FOREIGN KEY (album_id) REFERENCES Album(album_id)
) engine = InnoDB;

CREATE TABLE Usuario_Musica(
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(usuario_id),
  FOREIGN KEY (musica_id) REFERENCES Musica(musica_id),
  CONSTRAINT PRIMARY KEY(usuario_id, musica_id)
) engine = InnoDB;

INSERT INTO Plano(nome, valor)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO Usuario(usuario, idade, plano_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Artista(nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

DELIMITER $$
CREATE FUNCTION getArtistId(artistName VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE artistId INT;
    SELECT artista_id
    FROM SpotifyClone.Artista Artista
    WHERE Artista.nome = artistName INTO artistId;
    RETURN artistId;
END $$
DELIMITER ;

INSERT INTO Usuario_Artista(usuario_id, artista_id)
VALUES
(1, (SELECT getArtistId('Walter Phoenix'))),
(1, (SELECT getArtistId('Freedie Shannon'))),
(1, (SELECT getArtistId('Lance Day'))),
(2, (SELECT getArtistId('Walter Phoenix'))),
(2, (SELECT getArtistId('Lance Day'))),
(3, (SELECT getArtistId('Peter Strong'))),
(3, (SELECT getArtistId('Walter Phoenix'))),
(4, (SELECT getArtistId('Freedie Shannon')));

INSERT INTO Album(nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Musica(nome, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

DELIMITER $$
CREATE FUNCTION getMusicId(musicName VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE movieId INT;
    SELECT musica_id
    FROM SpotifyClone.Musica AS Musica
    WHERE Musica.nome = musicName INTO movieId;
    RETURN movieId;
END $$
DELIMITER ;

INSERT INTO Usuario_Musica(usuario_id, musica_id)
VALUES
(1, (SELECT getMusicId('Soul For Us'))),
(1, (SELECT getMusicId('Magic Circus'))),
(1, (SELECT getMusicId('Diamond Power'))),
(1, (SELECT getMusicId('Thang Of Thunder'))),
(2, (SELECT getMusicId('Home Forever'))),
(2, (SELECT getMusicId('Words Of Her Life'))),
(2, (SELECT getMusicId('Reflections Of Magic'))),
(2, (SELECT getMusicId('Honey, Let\'s Be Silly'))),
(3, (SELECT getMusicId('Troubles Of My Inner Fire'))),
(3, (SELECT getMusicId('Thang Of Thunder'))),
(3, (SELECT getMusicId('Magic Circus'))),
(4, (SELECT getMusicId('Dance With Her Own'))),
(4, (SELECT getMusicId('Without My Streets'))),
(4, (SELECT getMusicId('Celebration Of More')));
