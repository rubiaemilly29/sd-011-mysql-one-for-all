DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
id INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(20) NOT NULL,
valor_plano DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

INSERT INTO plano (tipo, valor_plano)
VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE usuario(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade TINYINT NOT NULL,
plano_id INTEGER,
CONSTRAINT FOREIGN KEY (plano_id) REFERENCES plano (id)
) engine = InnoDB;

INSERT INTO usuario (nome, idade)
VALUES
('Thati', 23),
('Cintia', 35),
('Bill', 20 ),
('Roger', 45);

CREATE TABLE artista(
id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(100) NOT NULL
) engine = InnoDB;

INSERT INTO artista (nome_artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');
  
CREATE TABLE album(
id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista (id)
) engine = InnoDB;

INSERT INTO album (nome_album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (artista_id) REFERENCES artista (id),
FOREIGN KEY (usuario_id) REFERENCES usuario (id)
) engine = InnoDB;

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE cancoes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album (id),
FOREIGN KEY (artista_id) REFERENCES artista (id)
) engine = InnoDB;

INSERT INTO cancoes(nome_cancao, album_id, artista_id)
VALUES
("Soul For Us",	1, 1),
("Reflections Of Magic", 1, 1),
("Dance With Her Own", 1, 1),
("Troubles Of My Inner Fire", 2, 1),
("Time Fireworks", 2, 1),
("Magic Circus", 3, 2),
("Honey, So Do I", 3, 2),
("Sweetie, Let's Go Wild", 3, 2),
("She Knows",3 , 2),
("Fantasy For Me", 4, 3),
("Celebration Of More", 4, 3),
("Rock His Everything",	4, 3),
("Home Forever",4, 3),
("Diamond Power", 4, 3),
("Honey, Let's Be Silly", 4, 3),
("Thang Of Thunder", 5, 4),
("Words Of Her Life", 5, 4),
("Without My Streets", 5, 4);

    
CREATE TABLE historico_de_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (id)
) engine = InnoDB;

INSERT INTO historico_de_reproducoes (usuario_id, cancao_id)
VALUES
(1,	1),
(1,	6),
(1,	14),
(1,	16),
(2,	13),
(2,	17),
(2,	2),
(2,	15),
(3,	4),
(3,	16),
(3,	6),
(4,	3),
(4,	18),
(4,	11);
