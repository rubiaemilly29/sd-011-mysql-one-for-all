DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
plano_id INT AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor DECIMAL(3,2),
PRIMARY KEY (plano_id)
) ENGINE=InnoDb;

CREATE TABLE usuarios(
usuario_id INT AUTO_INCREMENT,
usuario VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
PRIMARY KEY (usuario_id),
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE=InnoDb;

CREATE TABLE artistas(
artista_id INT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
PRIMARY KEY (artista_id)
);

CREATE TABLE albuns(
album_id INT AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (album_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE=InnoDb;

CREATE TABLE relacoes_musicas(
musica_id INT AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
artista_id INT NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY (musica_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) ENGINE=InnoDb;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE=InnoDb;

CREATE TABLE historico_playlist_usuarios(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES relacoes_musicas(musica_id)
) ENGINE=InnoDb;

INSERT INTO planos (plano, valor)
VALUES ('Gratuito', 0),
('Familiar', 7.99),
('Universitário', 5.99);

INSERT INTO usuarios (usuario, idade, plano_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artistas (nome)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns (album, artista_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO relacoes_musicas (nome, artista_id, album_id)
VALUES ('Soul For Us', 1, 1),
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

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historico_playlist_usuarios (usuario_id, musica_id)
VALUES (1, 1),
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
