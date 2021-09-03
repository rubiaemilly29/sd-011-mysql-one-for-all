DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(100),
valor DECIMAL(3,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(100),
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES Planos (plano_id)
) engine = InnoDB;

CREATE TABLE Artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(100)
) engine = InnoDB;

CREATE TABLE Albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(100),
artista_id INT NOT NULL, 
FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE Cancoes(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(100),
album_id INT NOT NULL, 
FOREIGN KEY (album_id) REFERENCES Albuns (album_id)
) engine = InnoDB;

CREATE TABLE Historico_Reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
FOREIGN KEY (cancao_id) REFERENCES Cancoes (cancao_id)
) engine = InnoDB;

CREATE TABLE Historico_Seguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES Usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES Artistas (artista_id)
) engine = InnoDB;

INSERT INTO Planos (plano_id, nome_plano, valor)
VALUES
(1, 'Gratuito', 0.00),
(2, 'Familiar', 7.99),
(3, 'Universitário', 5.99);
  
INSERT INTO Usuarios (usuario_id, nome_usuario, idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);
  
INSERT INTO Artistas (artista_id, nome_artista)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');
  
INSERT INTO Albuns (album_id, nome_album, artista_id)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);
  
INSERT INTO Cancoes (cancao_id, nome_cancao, album_id)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, 'She Knows', 3),
(10, 'Fantasy For Me', 4),
(11, 'Celebration Of More', 4),
(12, 'Rock His Everything', 4),
(13, 'Home Forever', 4),
(14, 'Diamond Power', 4),
(15, "Honey, Let's Be Silly", 4),
(16, 'Thang Of Thunder', 5),
(17, 'Words Of Her Life', 5),
(18, 'Without My Streets', 5);
  
INSERT INTO Historico_Reproducoes (usuario_id, cancao_id)
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
  
INSERT INTO Historico_Seguidores (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
