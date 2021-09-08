DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE planos (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
valor DOUBLE
) engine = InnoDB;
INSERT INTO planos (nome, valor)
VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);
CREATE TABLE usuarios (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
idade INTEGER,
plano_id INTEGER,
FOREIGN KEY (plano_id) REFERENCES planos (id)
) engine = InnoDB;
INSERT INTO usuarios (nome, idade, plano_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);
CREATE TABLE artistas (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100)
) engine = InnoDB;
INSERT INTO artistas (nome)
VALUES
('Walter Phoenix'),
('Freedie Shannon'),
('Lance Day'),
('Peter Strong');
CREATE TABLE albums (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(50),
artista_id INTEGER,
FOREIGN KEY (artista_id) REFERENCES artistas (id)
) engine = InnoDB;
INSERT INTO albums (titulo, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 4),
('Incandescent', 3),
('Temporary Culture', 2);
CREATE TABLE cancoes (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(100),
album_id INTEGER,
FOREIGN KEY (album_id) REFERENCES albums (id)
) engine = InnoDB;
INSERT INTO cancoes (titulo, album_id)
VALUES
('Soul For Us', 1),
('Reflections of Magic', 1),
('Dance With Her Own', 1),
('Troubles of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
("Sweetie, Let's Go Wild", 3),
("She Knows", 3),
("Fantasy For Me", 4),
("Celebration of More", 4),
("Rock His Everything", 4),
("Home Forever", 4),
("Diamond Power", 4),
("Honey, Let's Be Silly", 4),
("Thang of Thunder", 5),
("Words Of Her Life", 5),
("Without My Streets", 5);
CREATE TABLE reproducoes (
usuario_id INTEGER,
cancao_id INTEGER,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (id)
) engine = InnoDB;
INSERT INTO reproducoes (usuario_id, cancao_id)
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
CREATE TABLE seguindo_artistas (
usuario_id INTEGER,
artista_id VARCHAR(100),
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (id),
FOREIGN KEY (artista_id) REFERENCES artistas (id)
) engine = InnoDB;
INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 3),
(3, 4),
(3, 1),
(4, 2);
