DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos_mensais(
id_plano INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
tipo_plano VARCHAR(30) NOT NULL,
valor_plano DEC(5,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE artistas(
id_artista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE albuns(
id_album INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100) NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)  
) ENGINE = InnoDB;

CREATE TABLE musicas(
id_musica INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
id_album INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES albuns(id_album),
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)  
) ENGINE = InnoDB;

CREATE TABLE usuarios(
id_usuario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY (id_plano) REFERENCES planos_mensais(id_plano)
) ENGINE = InnoDB;

CREATE TABLE tabela_seguidores_artistas(
id_usuario INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista),
PRIMARY KEY (id_usuario, id_artista)
) ENGINE = InnoDB;

CREATE TABLE historico_de_reproducoes(
id_usuario INT NOT NULL,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
id_musica INT NOT NULL,
FOREIGN KEY (id_musica) REFERENCES musicas(id_musica),
PRIMARY KEY (id_usuario, id_musica)
) ENGINE = InnoDB;

INSERT INTO planos_mensais (id_plano, tipo_plano, valor_plano)
VALUES
(1, 'gratuito',	0),
(2, 'familiar', 7.99),
(3, 'universitário', 5.99);

INSERT INTO artistas (id_artista, nome)
VALUES
(1, 'Walter Phoenix'),
(2,	'Peter Strong'),
(3,	'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO albuns (id_album, album, id_artista)
VALUES
(1,	'Envious', 1),
(2,	'Exuberant', 1),
(3,	'Hallowed Steam', 2),
(4,	'Incandescent', 3),
(5,	'Temporary Culture', 4);

INSERT INTO musicas (id_musica, nome, id_artista, id_album)
VALUES
(1,	'Soul For Us', 1, 1),
(2,	'Reflections Of Magic',	1, 1),
(3,	'Dance With Her Own', 1, 1),
(4,	'Troubles Of My Inner Fire', 1,	2),
(5,	'Time Fireworks', 1, 2),
(6,	'Magic Circus',	2, 3),
(7,	'Honey, So Do I', 2, 3),
(8,	"Sweetie, Let's Go Wild", 2, 3),
(9,	'She Knows', 2,	3),
(10, 'Fantasy For Me', 3, 4),
(11, 'Celebration Of More',	3, 4),
(12, 'Rock His Everything',	3, 4),
(13, 'Home Forever', 3,	4),
(14, 'Diamond Power', 3, 4),
(15, "Honey, Let's Be Silly", 3, 4),
(16, 'Thang Of Thunder', 4,	5),
(17, 'Words Of Her Life', 4, 5),
(18, 'Without My Streets', 4, 5);

INSERT INTO usuarios (id_usuario, usuario, idade, id_plano)
VALUES
(1,	'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3,	'Bill', 20, 3),
(4,	'Roger', 45, 1);

INSERT INTO tabela_seguidores_artistas (id_usuario, id_artista)
VALUES
(1,	1),
(2,	1),
(3,	2),
(4,	4),
(3,	1),
(2,	3),
(1,	4),
(1,	3);

INSERT INTO historico_de_reproducoes (id_usuario, id_musica)
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
(3, 6),
(4,	3),
(4,	18),
(4,	11);
