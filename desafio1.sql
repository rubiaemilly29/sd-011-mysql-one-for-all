DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artistas(
    artista_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(50) NOT NULL
);

CREATE TABLE planos(
    plano_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano VARCHAR(50) NOT NULL,
    valor_plano DOUBLE NOT NULL
);

CREATE TABLE albuns(
    album_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(50) NOT NULL,
    artista_id SMALLINT NOT NULL,
    CONSTRAINT FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE cancoes(
    cancao_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cancao VARCHAR(50) NOT NULL,
    album_id SMALLINT NOT NULL,
    CONSTRAINT FOREIGN KEY (album_id) REFERENCES albuns (album_id)
);

CREATE TABLE usuarios(
    usuario_id SMALLINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    idade SMALLINT NOT NULL,
    plano_id SMALLINT NOT NULL,
    CONSTRAINT FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

CREATE TABLE seguindo(
    usuario_id SMALLINT NOT NULL,
    artista_id SMALLINT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id)
);

CREATE TABLE historico(
    usuario_id SMALLINT NOT NULL,
    cancao_id SMALLINT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id)
);

INSERT INTO artistas(artista)
VALUES ('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO planos(plano, valor_plano)
VALUES ('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

INSERT INTO albuns(album, artista_id)
VALUES ('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO cancoes(cancao, album_id)
VALUES ('Soul For Us', 1),
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

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES ('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO seguindo(usuario_id, artista_id)
VALUES (1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO historico(usuario_id, cancao_id)
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
