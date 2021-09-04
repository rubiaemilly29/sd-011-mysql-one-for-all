DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE SpotifyClone.planos (
plano_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
plano VARCHAR(25) NOT NULL,
valor_plano VARCHAR(6) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.usuarios (
usuario_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
idade VARCHAR(4),
plano_id SMALLINT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos(plano_id)
) ENGINE = InnoDB;


CREATE TABLE SpotifyClone.historico_reproducoes (
historico_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
historico_reproducoes VARCHAR(100),
usuario_id SMALLINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas (
seguindo_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
seguindo_artistas VARCHAR(100),
usuario_id SMALLINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.artistas (
artista_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artista VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.albuns (
album_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
album VARCHAR(45) NOT NULL,
artista_id SMALLINT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
) ENGINE = InnoDB;

CREATE TABLE SpotifyClone.cancoes (
cancoes_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
cancoes VARCHAR(45) NOT NULL,
artista_id SMALLINT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id) 
) ENGINE = InnoDB;

INSERT INTO SpotifyClone.planos (plano, valor_plano)
VALUES 
('gratuito', 0),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO SpotifyClone.usuarios (nome, idade, plano_id)
VALUES 
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.historico_reproducoes (historico_reproducoes, usuario_id)
VALUES
('Soul For Us', 1), ('Magic Circus', 1), ('Diamond Power', 1), ('Thang Of Thunder', 1),
('Home Forever', 2), ('Words Of Her Life', 2), ('Reflections Of Magic', 2), ('Honey, Lets Be Silly', 2),
('Troubles Of My Inner Fire', 3), ('Thang Of Thunder', 3), ('Magic Circus', 3), 
('Dance With Her Own', 4), ('Without My Streets', 4), ('Celebration Of More', 4);

INSERT INTO SpotifyClone.seguindo_artistas (seguindo_artistas, usuario_id)
VALUES
('Walter Phoenix', 1), ('Freedie Shannon', 1), ('Lance Day', 1),
('Walter Phoenix', 2), ('Lance Day', 2),
('Peter Strong', 3), ('Walter Phoenix', 3), 
('Freedie Shannon', 4);

INSERT INTO SpotifyClone.artistas (artista)
VALUES
('Walter Phoenix'), 
('Peter Strong'), 
('Lance Day'), 
('Freedie Shannon');

INSERT INTO SpotifyClone.albuns (album, artista_id)
VALUES
('Envious', 1), ('Exuberant', 1), 
('Hallowed Steam', 2), 
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.cancoes (cancoes, artista_id)
VALUES
('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 1), ('Time Fireworks', 1),
('Magic Circus', 2), ('Honey, So Do I', 2), ("Sweetie, Let's Go Wild", 2), ('She Knows', 2),
('Fantasy For Me', 3), ('Celebration Of More', 3), ('Rock His Everything', 3), ('Home Forever', 3), ('Diamond Power', 3), ("Honey, Let's Be Silly", 3),
('Thang Of Thunder', 4), ('Words Of Her Life', 4), ('Without My Streets', 4);
