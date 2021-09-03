DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
plano VARCHAR(30) NOT NULL,
valor_plano DECIMAL(3,2)
);
    
INSERT INTO planos(plano, valor_plano)
VALUES('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);
          
CREATE TABLE usuarios(
id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
usuario VARCHAR(30) NOT NULL,
idade INT NOT NULL,
plano_id TINYINT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos (id)
);

INSERT INTO usuarios(usuario, idade, plano_id)
VALUES('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE artistas(
id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
artista VARCHAR(50) NOT NULL
);

INSERT INTO artistas(artista)
VALUES('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE albuns(
id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
album VARCHAR(50) NOT NULL,
artista_id TINYINT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (id)
);

INSERT INTO albuns(album, artista_id)
VALUES('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE cancoes(
id TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
cancao VARCHAR(50) NOT NULL,
album_id TINYINT NOT NULL,
artista_id TINYINT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns (id),
FOREIGN KEY (artista_id) REFERENCES artistas (id)
);

INSERT INTO cancoes(cancao, album_id, artista_id)
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
('Words Of Her Life', 5, 4),
('Without My Streets', 5, 4);

CREATE TABLE artistas_seguidos(
usuario_id TINYINT NOT NULL,
artista_id TINYINT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
FOREIGN KEY (artista_id) REFERENCES artistas (id)
);

INSERT INTO artistas_seguidos (usuario_id, artista_id)
VALUES(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE historico_reproducoes(
usuario_id TINYINT NOT NULL,
cancao_id TINYINT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (id)
);

INSERT INTO historico_reproducoes (usuario_id, cancao_id)
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
(4, 18),
(4, 11);

