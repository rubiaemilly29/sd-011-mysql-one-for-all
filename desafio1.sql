CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano_nome VARCHAR(35),
plano_valor DOUBLE
) engine = InnoDB;

CREATE TABLE usuarios (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(45) NOT NULL,
usuario_idade TINYINT,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos (plano_id)
) engine = InnoDB;

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(35) NOT NULL
) engine = InnoDB;

CREATE TABLE albums (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_nome VARCHAR(45) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
) engine = InnoDB;

CREATE TABLE musicas (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica_nome VARCHAR(45) NOT NULL,
artista_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id),
FOREIGN KEY (album_id) REFERENCES SpotifyClone.albums (album_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas (artista_id)
) engine = InnoDB;

CREATE TABLE historico_musicas (
usuario_id INT NOT NULL,
musica_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musicas(musica_id), 
FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano_id, plano_nome, plano_valor)
VALUES
(1, 'Gratuito', 0),
(2, 'Familiar', 7.99),
(3, 'Universitário', 5.99);

INSERT INTO SpotifyClone.usuarios (usuario_id, usuario_nome, usuario_idade, plano_id)
VALUES
(1, 'Thati', 23, 1),
(2, 'Cintia', 35, 2),
(3, 'Bill', 20, 3),
(4, 'Roger', 45, 1);

INSERT INTO SpotifyClone.artistas (artista_id, artista_nome)
VALUES
(1, 'Walter Phoenix'),
(2, 'Peter Strong'),
(3, 'Lance Day'),
(4, 'Freedie Shannon');

INSERT INTO SpotifyClone.albums (album_id, album_nome, artista_id)
VALUES
(1, 'Envious', 1),
(2, 'Exuberant', 1),
(3, 'Hallowed Steam', 2),
(4, 'Incandescent' , 3),
(5, 'Temporary Culture', 4);

INSERT INTO SpotifyClone.musicas (musica_id, musica_nome, artista_id, album_id)
VALUES
(1, 'Soul For Us', 1, 1),
(2, 'Reflections Of Magic', 1, 1),
(3, 'Dance With Her Own', 1, 1),
(4, 'Troubles Of My Inner Fire', 1, 2),
(5, 'Time Fireworks', 1, 2),
(6, 'Magic Circus', 2, 3),
(7, 'Honey, So Do I', 2, 3),
(8, "Sweetie, Let's Go Wild", 2, 3),
(9, 'She Knows', 2, 3),
(10, 'Fantasy For Me', 3, 4),
(11, 'Celebration Of More', 3, 4),
(12, 'Rock His Everything', 3, 4),
(13, 'Home Forever', 3, 4),
(14, 'Diamond Power', 3, 4),
(15, "Honey, Let's Be Silly", 3, 4),
(16, 'Thang Of Thunder', 4, 5),
(17, 'Words Of Her Life', 4, 5),
(18, 'Without My Streets', 4, 5);

INSERT INTO SpotifyClone.historico_musicas (usuario_id, musica_id)
VALUES
(1,	1),
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

INSERT INTO SpotifyClone.seguindo_artistas (usuario_id, artista_id)
VALUES
(1,	1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
