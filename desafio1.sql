DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE usuario(
	usuarioId INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    PRIMARY KEY(usuarioId)
) engine = InnoDB;

CREATE TABLE plano(
	planoId INT AUTO_INCREMENT NOT NULL,
    preco DOUBLE(3, 2) NOT NULL,
    plano VARCHAR(100) NOT NULL,
    PRIMARY KEY(planoId)
) engine = InnoDB;

CREATE TABLE artista(
	artistaId INT AUTO_INCREMENT NOT NULL,
    artista VARCHAR(100) NOT NULL,
    PRIMARY KEY(artistaId)
) engine = InnoDB;

CREATE TABLE album(
	albumId INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL NOT NULL,
    artistaId INT NOT NULL,
    PRIMARY KEY(albumId),
    FOREIGN KEY(artistaId) REFERENCES artista(artistaId)
) engine = InnoDB;

CREATE TABLE seguindoartistas(
    usuarioId INT NOT NULL,
    artistaId INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY(usuarioId) REFERENCES usuario (usuarioId),
    FOREIGN KEY(artistad) REFERENCES artista (artistaId)
) engine = InnoDB;

CREATE TABLE cancoes(
	cancoesId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    albumId INT NOT NULL,
    FOREIGN KEY(albumId) REFERENCES album(albumId)
) engine = InnoDB;

CREATE TABLE historico(
	usuarioId INT NOT NULL,
    cancoesId INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, cancoes_id),
    FOREIGN KEY(usuarioId) REFERENCES usuario (usuarioId),
    FOREIGN KEY(cancoesId) REFERENCES cancoes (cancoesId)
) engine = InnoDB;

INSERT INTO usuario(nome, idade)
VALUES 
('Thati', 23),
('Cintia', 35),
('Bill', 20),
('Roger', 45);

INSERT INTO plano(plano, preco)
VALUES 
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO artista(artista)
VALUES 
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO album(nome, artistaId)
VALUES 
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes(titulo, albumId)
VALUES 
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 1),
('Time Fireworks', 1),
('Magic Circus', 2),
('Honey, So Do I', 2),
('Sweetie, Let''s Go Wild', 2),
('She Knows', 2),
('Fantasy For Me', 3),
('Celebration Of More', 3),
('Rock His Everything', 3),
('Home Forever', 3),
('Diamond Power', 3),
('Honey, Let''s Be Silly', 3),
('Thang Of Thunder', 4),
('Words Of Her Life', 4),
('Without My Streets', 4);

INSERT INTO seguindoartistas(usuarioId, artistaId)
VALUES 
(1, 1),
(1, 3),
(1, 4),
(2, 3),
(2, 1),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO historico(usuarioId, cancoesId)
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
