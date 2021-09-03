DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    valor_plano DECIMAL(5 , 2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Artista(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Album(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  album VARCHAR(100) NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT FOREIGN KEY (artista_id) REFERENCES Artista (id)
) ENGINE = InnoDb;

CREATE TABLE Usuario(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  idade TINYINT NOT NULL,
  plano_id INT NOT NULL,
  CONSTRAINT FOREIGN KEY (plano_id) REFERENCES Planos (id)
) ENGINE = InnoDB;

CREATE TABLE Cancoes(
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  song VARCHAR(150) NOT NULL,
  album_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT FOREIGN KEY (album_id) REFERENCES Album (id),
  FOREIGN KEY (artista_id) REFERENCES Artista (id)
) ENGINE = InnoDB;

CREATE TABLE Seguindo_Artista(
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuario (id),
  FOREIGN KEY (artista_id) REFERENCES Artista (id)
) ENGINE = InnoDB;

CREATE TABLE Historico_De_Reproducoes(
  usuario_id INT NOT NULL,
  cancoes_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(usuario_id, cancoes_id),
  FOREIGN KEY (usuario_id) REFERENCES Usuario (id),
  FOREIGN KEY (cancoes_id) REFERENCES Cancoes (id)
) ENGINE = InnoDB;

INSERT INTO Planos(tipo, valor_plano)
VALUES ('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO Artista(nome)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO Album(album, artista_id)
VALUES ('Envious',	1),
('Exuberant',	1),
('Hallowed Steam',	2),
('Incandescent',	3),
('Temporary Culture',	4);

INSERT INTO Usuario(nome, idade, plano_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO Cancoes(song, album_id, artista_id)
VALUES("Soul For Us",	1,	1),
("Reflections Of Magic",	1,	1),
("Dance With Her Own",	1,	1),
("Troubles Of My Inner Fire",	2,	1),
("Time Fireworks",	2,	1),
("Magic Circus",	3,	2),
("Honey, So Do I",	3,	2),
("Sweetie, Let's Go Wild",	3,	2),
("She Knows",	3,	2),
("Fantasy For Me",	4,	3),
("Celebration Of More",	4,	3),
("Rock His Everything",	4,	3),
("Home Forever", 4,	3),
("Diamond Power",	4,	3),
("Honey, Let's Be Silly",	4,	3),
("Thang Of Thunder",	5,	4),
("Words Of Her Life",	5,	4),
("Without My Streets",	5,	4);

INSERT INTO Seguindo_Artista(usuario_id, artista_id)
VALUES(1,	1),
(1,	4),
(1,	3),
(2,	1),
(2,	3),
(3,	2),
(3,	1),
(4,	4);

INSERT INTO Historico_De_Reproducoes(usuario_id, cancoes_id)
VALUES (1,	1),
(1,	6),
(1,	14),
(1,	16),
(2,	13),
(2,	17),
(2,	2),
(2,	15),
(3,	4),
(3,	16),
(3,	6),
(4,	3),
(4,	18),
(4,	11);
