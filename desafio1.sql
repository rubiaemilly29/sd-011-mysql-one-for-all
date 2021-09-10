DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(20),
valor_plano double NOT NULL
) engine = InnoDB;

CREATE TABLE usuario (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(50),
idade_usuario INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artista (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(50)
) engine = InnoDB;

CREATE TABLE album (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50),
artista_id int not null,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE musica (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(50),
artista_id int not null,
album_id int not null,
FOREIGN KEY (album_id) REFERENCES album(album_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE seguindo (
usuario_id INT,
artista_id INT,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE historico (
usuario_id INT,
musica_id INT,
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musica(musica_id)
) engine = InnoDB;

INSERT INTO planos (nome_plano, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuario (nome_usuario, idade_usuario, plano_id )
VALUES
('Thati', 23, 1),
('Cintia', 35,  2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO artista (nome_artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album (nome_album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musica (nome_musica, album_id, artista_id)
VALUES
('Soul For Us', 1, 1),
('Reflections Of Magic', 1, 1),
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 2, 1),
('Time Fireworks', 2, 1),
('Magic Circus', 3, 2),
('Honey, So Do I', 3, 2),
('Sweetie, Let''s Go Wild', 3, 2),
('She Knows', 3, 2),
('Fantasy For Me', 4, 3),
('Celebration Of More', 4, 3),
('Rock His Everything', 4, 3),
('Home Forever', 4, 3),
('Diamond Power', 4, 3),
('Honey, Let''s Be Silly', 4, 3),
('Thang Of Thunder', 5, 4),
('Words Of Her Life', 5, 4),
('Without My Streets', 5, 4);

INSERT INTO seguindo (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historico (usuario_id, musica_id)
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
