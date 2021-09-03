DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artistas (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista_name VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano_type VARCHAR(150) NOT NULL,
    plano_valor DECIMAL(3,2) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
)ENGINE = InnoDB;

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(150) NOT NULL,
    artista_id INT NOT NULL,
	FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
)ENGINE = InnoDB;

CREATE TABLE musicas (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
    music_nome VARCHAR(300) NOT NULL,
    ALBUM_ID INT NOT NULL,
    FOREIGN KEY (ALBUM_ID) REFERENCES albuns(album_id)
)ENGINE = InnoDB;

CREATE TABLE seguidores (
usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
)ENGINE = InnoDB;

CREATE TABLE Historico (
usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
    FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
)ENGINE = InnoDB;

INSERT INTO planos (plano_type, plano_valor)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('univesitário', 5.99);

SELECT * FROM planos;

INSERT INTO usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

SELECT * FROM usuarios;

INSERT INTO artistas (artista_name)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

SELECT * FROM artistas;

INSERT INTO albuns (album_name, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

SELECT * FROM albuns;

INSERT INTO seguidores (usuario_id, artista_id)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);

SELECT * FROM seguidores;

INSERT INTO musicas (music_nome, album_id)
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

SELECT * FROM musicas;

INSERT INTO Historico (usuario_id, musica_id)
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

SELECT * FROM Historico;
