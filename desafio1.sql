DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(50) NOT NULL,
preco_plano DECIMAL(3, 2) NOT NULL
) ENGINE = InnoDB;


INSERT INTO planos(nome_plano, preco_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(10) NOT NULL,
usuario_idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE = InnoDB;

INSERT INTO usuario(usuario_nome, usuario_idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

INSERT INTO artista (nome_artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE seguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) ENGINE = InnoDB;

INSERT INTO seguidores (usuario_id, artista_id)
VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
album_nome VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

INSERT INTO album (album_nome, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4); 

CREATE TABLE cancoes(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album (album_id)
) ENGINE = InnoDB;


INSERT INTO cancoes (nome_cancao, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
("Honey, Let's Be Silly", 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE historico_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) ENGINE = InnoDB;

INSERT INTO historico_reproducoes (usuario_id, cancao_id)
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
