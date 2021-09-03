DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
`planoId` INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(150) NOT NULL,
valor DOUBLE NOT NULL
);

INSERT INTO planos (plano, valor) 
VALUES ('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

CREATE TABLE usuarios (
usuarioId INT PRIMARY KEY AUTO_INCREMENT,
user VARCHAR(150) NOT NULL,
age INT NOT NULL,
planoId INT NOT NULL,
FOREIGN KEY (planoId) REFERENCES planos(planoId));

INSERT INTO usuarios (user, age, planoId)
VALUES 
('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);

CREATE TABLE artistas (
artistaId INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(150) NOT NULL);

INSERT INTO artistas (artista)
VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');

CREATE TABLE albuns (
albumId INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(300) NOT NULL,
artistaId INT NOT NULL,
FOREIGN KEY (artistaId) REFERENCES artistas(artistaId));

INSERT INTO albuns (album, artistaId)
VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 2), ('Incandescent', 3), ('Temporary Culture', 4);

CREATE TABLE seguindo (
usuarioId INT NOT NULL,
artistaId INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuarioId, artistaId),
FOREIGN KEY (usuarioId) REFERENCES usuarios(usuarioId),
FOREIGN KEY (artistaId) REFERENCES artistas(artistaId));

INSERT INTO seguindo (usuarioId, artistaId)
VALUES (1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);

CREATE TABLE musicas (
musicaId INT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(300) NOT NULL,
albumId INT NOT NULL,
FOREIGN KEY (albumId) REFERENCES albuns(albumId));

INSERT INTO musicas (musica, albumId)
VALUES ('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2),
('Magic Circus', 3), ('Honey, So Do I', 3), ('Sweetie, Let\'s Go Wild', 3), ('She Knows', 3), ('Fantasy For Me', 4), ('Celebration Of More', 4),
('Rock His Everything', 4), ('Home Forever', 4), ('Diamond Power', 4), ('Honey, Let\'s Be Silly', 4), ('Thang Of Thunder', 5), ('Words Of Her Life', 5),
('Without My Streets', 5);

CREATE TABLE historico (
usuarioId INT NOT NULL,
musicaId INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuarioId, musicaId),
FOREIGN KEY (usuarioId) REFERENCES usuarios(usuarioId),
FOREIGN KEY (musicaId) REFERENCES musicas(musicaId));

INSERT INTO historico (usuarioId, musicaId)
VALUES
(1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 7), (3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);