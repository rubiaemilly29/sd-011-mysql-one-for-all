DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
plano_valor DECIMAL(3,2) NOT NULL 
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(50) NOT NULL,
usuario_idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artistas(
artista_id INT KEY AUTO_INCREMENT,
nome_artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE musicas(
musica_id 	INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
usario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
) engine = InnoDB;

INSERT INTO planos (plano_id, plano, valor_plano)
VALUES (1, 'Familiar', 7.99), (2, 'Universitário', 5.99), (3, 'Gratuito', 0.00);

INSERT INTO usuarios (usuario_id, nome_usuario, plano_id)
VALUES (1, 'Thati', 23, 3), (2, 'Cintia', 35, 1), (3, 'Bill', 20, 2), (4, 'Roger', 45, 3);

INSERT INTO artistas (artista_id, nome_artista)
VALUES (1, 'Walter Phoenix'), (2, 'Peter Strong'), (3, 'Lance Day'), (4, 'Freedie Shannon');

INSERT INTO albuns (album_id, nome_album, artista_id)
VALUES (1,'Envious', 1), (2,'Exuberant', 1), (3,'Hallowed Steam', 2), (4, 'Incandescent', 3), (5, 'Temporary Culture', 4);

INSERT INTO musicas (musica_id, nome_musica, album_id)
VALUES
(1, 'Soul For Us', 1),
(2, 'Reflections Of Magic', 1),
(3, 'Dance With Her Own', 1),
(4, 'Troubles Of My Inner Fire', 2 ),
(5, 'Time Fireworks', 2),
(6, 'Magic Circus', 3),
(7, 'Honey, So Do I', 3),
(8, "Sweetie, Let's Go Wild", 3),
(9, 'She Knows', 3),
(10, 'Rock His Everything', 4),
(11, 'Home Forever', 4),
(12, 'Diamond Power', 4),
(13, "Honey, Let's Be Silly", 4),
(14, 'Thang Of Thunder', 5),
(15, 'Words Of Her Life', 5),
(16, 'Without My Streets', 5);

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

INSERT INTO historico_de_reproducoes (usuario_id, musica_id)
VALUES
(1, 1),
(1, 15),
(1, 10),
(1, 12),
(2, 9),
(2, 13),
(2, 2),
(2, 18),
(3, 4),
(3, 12),
(3, 15),
(4, 3),
(4, 14),
(4, 7);
