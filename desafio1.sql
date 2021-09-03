DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.artistas(
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albuns(
id_album INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50) NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.planos(
id_plano INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(3, 2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.usuarios(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(50) NOT NULL,
idade_usuario INT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
id_cancao INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(50) NOT NULL,
id_artista INT NOT NULL,
id_album INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista),
FOREIGN KEY (id_album) REFERENCES albuns(id_album)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.historico(
id_usuario INT NOT NULL,
id_cancao INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_usuario, id_cancao),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_cancao) REFERENCES cancoes(id_cancao)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.seguidores(
id_usuario INT NOT NULL,
id_artista INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_usuario, id_artista),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.artistas (id_artista, nome_artista)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');
  
INSERT INTO SpotifyClone.albuns (id_album, nome_album, id_artista)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent', 3),
(5, 'Temporary Culture', 4);
  
INSERT INTO SpotifyClone.planos (id_plano, nome_plano, valor_plano)
VALUES
(1, 'gratuito', 0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);
  
INSERT INTO SpotifyClone.cancoes (id_cancao, nome_cancao, id_artista, id_album)
VALUES
(1, 'Soul For Us', 1, 1),
(2, 'Reflections Of Magic', 1, 1),
(3, 'Dance With Her Own', 1, 1),
(4, 'Troubles Of My Inner Fire', 1, 2),
(5, 'Time Fireworks', 1, 2),
(6, 'Magic Circus', 2, 3),
(7, 'Honey, So Do I', 2, 3),
(8, "Sweetie, Let's Go Wild", 2, 3),
(9, 'She Knows', 2, 3),
(10, 'Fantasy For Me', 3, 4),
(11, 'Celebration Of More', 3, 4),
(12, 'Rock His Everything', 3, 4),
(13, 'Home Forever', 3, 4),
(14, 'Diamond Power', 3, 4),
(15, "Honey, Let's Be Silly", 3, 4),
(16, 'Thang Of Thunder', 4, 5),
(17, 'Words Of Her Life', 4, 5),
(18, 'Without My Streets', 4, 5);
  
INSERT INTO SpotifyClone.usuarios (id_usuario, nome_usuario, idade_usuario, id_plano)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);
  
INSERT INTO SpotifyClone.historico (id_usuario, id_cancao)
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
  
INSERT INTO SpotifyClone.seguidores (id_usuario, id_artista)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
