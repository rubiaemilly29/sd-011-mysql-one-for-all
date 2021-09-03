CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE plano(
plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
valor DECIMAL(3,2)
);

INSERT INTO plano(nome,valor)
VALUES('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE artista(
artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL
);

INSERT INTO artista(nome)
VALUES('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE usuario(
usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
idade INT NOT NULL,
plano_id INTEGER,
FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
);

INSERT INTO usuario(nome, idade, plano_id)
VALUES('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE album(
album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
artista_id INTEGER,
FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
);

INSERT INTO album(nome, artista_id)
VALUES('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE cancao(
cancao_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(150) NOT NULL,
album_id INTEGER,
artista_id INTEGER,
FOREIGN KEY (album_id) REFERENCES album (album_id),
FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
);

INSERT INTO cancao(nome, album_id, artista_id)
VALUES('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 2, 1),
('Time Fireworks', 2, 1),
('Magic Circus', 3, 2),
('Honey, So Do I', 3, 2),
("Sweetie, Let's Go Wild", 3, 2),
('She Knows', 3, 2),
('Fantasy For Me', 4, 3),
('Celebration Of More', 4, 3),
('Rock His Everything', 4, 3),
('Home Forever', 4, 3),
('Diamond Power', 4, 3),
("Honey, Let's Be Silly", 4, 3),
('Thang Of Thunder', 5, 4),
('Words Of Her Life', 5,  4),
('Without My Streets', 5, 4);

CREATE TABLE historico_reproducao(
usuario_id INTEGER,
cancao_id INTEGER,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancao (cancao_id)
);

INSERT INTO historico_reproducao(usuario_id, cancao_id)
VALUES(1, 1),
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
(4,18),
(4, 11);

CREATE TABLE artista_seguidores(
artista_id INTEGER,
usuario_id INTEGER,
CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista (artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id)
);

INSERT INTO artista_seguidores(usuario_id, artista_id)
VALUES(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
