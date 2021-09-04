DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
  plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(40) NOT NULL,
  valor_plano DOUBLE(4,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Artistas(
artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Albuns(
  album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(60) NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) engine = InnoDB;

CREATE TABLE Cancoes(
  cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  cancao VARCHAR(150) NOT NULL,
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
) engine = InnoDB;

CREATE TABLE Usuarios(
  usario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
) engine = InnoDB;

CREATE TABLE Seguindo_Artistas(
  seguindo_artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) engine = InnoDB;

CREATE TABLE Historico_de_Reproducoes(
  historico_de_reproducoes_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  cancao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
  FOREIGN KEY (cancao_id) REFERENCES Cancoes(cancao_id)
) engine = InnoDB;

INSERT INTO Planos (plano, valor_plano)
VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO Artistas (artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Albuns (albuns, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO Cancoes (cancao, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
(`Sweetie, Let's go Wild`, 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
(`Honey, Let's Be Silly`, 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

INSERT INTO Usuarios (nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO Seguindo_Artistas (usuario_id, artista_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO Historico_de_Reproducoes (usuario_id, cancao_id)
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
