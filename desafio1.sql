DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artistas (
artista_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artista VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE planos (
plano_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
plano VARCHAR(25) NOT NULL,
valor_plano VARCHAR(6) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios (
usuario_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
idade VARCHAR(4),
plano_id SMALLINT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) ENGINE = InnoDB;

CREATE TABLE albuns (
album_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
album VARCHAR(45) NOT NULL,
artista_id SMALLINT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE = InnoDB;

CREATE TABLE cancoes (
cancoes_id SMALLINT PRIMARY KEY NOT NULL AUTO_INCREMENT,
cancoes VARCHAR(45) NOT NULL,
album_id SMALLINT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id) 
) ENGINE = InnoDB;

CREATE TABLE historico_reproducoes (
usuario_id SMALLINT NOT NULL,
cancoes_id SMALLINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id),
CONSTRAINT PRIMARY KEY(usuario_id, cancoes_id)
) ENGINE = InnoDB;

CREATE TABLE seguindo_artistas (
usuario_id SMALLINT NOT NULL,
artista_id SMALLINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
) ENGINE = InnoDB;

INSERT INTO artistas (artista)
VALUES
('Walter Phoenix'), 
('Peter Strong'), 
('Lance Day'), 
('Freedie Shannon');

INSERT INTO albuns (album, artista_id)
VALUES
('Envious', 1), ('Exuberant', 1), 
('Hallowed Steam', 2), 
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO planos (plano, valor_plano)
VALUES 
('gratuito', 0),
('familiar', 7.99),
('universitario', 5.99);

INSERT INTO usuarios (nome, idade, plano_id)
VALUES 
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO cancoes (cancoes, album_id)
VALUES
('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1), ('Troubles Of My Inner Fire', 1), ('Time Fireworks', 1),
('Magic Circus', 2), ('Honey, So Do I', 2), ("Sweetie, Let's Go Wild", 2), ('She Knows', 2),
('Fantasy For Me', 3), ('Celebration Of More', 3), ('Rock His Everything', 3), ('Home Forever', 3), ('Diamond Power', 3), ("Honey, Let's Be Silly", 3),
('Thang Of Thunder', 4), ('Words Of Her Life', 4), ('Without My Streets', 4);

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
(1, 1), (1, 4), (1, 3),
(2, 1), (2, 3),
(3, 2), (3, 1), 
(4, 4);

INSERT INTO historico_reproducoes (usuario_id, cancoes_id)
VALUES
(1, 1), (1, 2), (1, 14), (1, 16),
(2, 13), (2, 17), (2, 2), (2, 15),
(3, 4), (3, 16), (3, 6), 
(4, 3), (4, 18), (4, 11);
