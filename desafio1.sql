DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
id_plano INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
tipo_plano VARCHAR(30) NOT NULL,
valor_plano DEC(5, 2) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE assinantes(
id_assinante INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
)ENGINE=InnoDB;

CREATE TABLE artistas(
id_artista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(100)
)ENGINE=InnoDB;

CREATE TABLE albuns(
album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(300) NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
)ENGINE=InnoDB;

CREATE TABLE musicas(
cancoes_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome_cancoes VARCHAR(300) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
)ENGINE=InnoDB;

CREATE TABLE historico_reproducoes(
cancoes_id INT NOT NULL,
id_assinante INT NOT NULL,
CONSTRAINT PRIMARY KEY(id_assinante, cancoes_id),
FOREIGN KEY (id_assinante) REFERENCES assinantes(id_assinante),
FOREIGN KEY (cancoes_id) REFERENCES musicas(cancoes_id)
)ENGINE=InnoDB;

CREATE TABLE seguindo(
id_assinante INT NOT NULL,
id_artista INT NOT NULL,
CONSTRAINT PRIMARY KEY(id_assinante, id_artista),
FOREIGN KEY (id_assinante) REFERENCES assinantes(id_assinante),
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
)ENGINE=InnoDB;

INSERT INTO planos(tipo_plano, valor_plano)
VALUES
('Gratuito', 0.00),
('Familiar', 7.99),
('Universitário', 5.99);
    
INSERT INTO assinantes(nome, idade, id_plano)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artistas(artista_nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns(titulo, id_artista)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO musicas(nome_cancoes, album_id)
VALUES
('Soul For Us', 1),
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

INSERT INTO historico_reproducoes(id_assinante, cancoes_id)
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

INSERT INTO seguindo(id_assinante, id_artista)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4); 
