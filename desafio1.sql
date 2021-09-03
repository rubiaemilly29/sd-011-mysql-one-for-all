DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
id_plano INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(25) NOT NULL,
plano_valor DECIMAL(3, 2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(10) NOT NULL,
usuario_idade INT NOT NULL,
id_plano INT NOT NULL,
FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
) ENGINE = InnoDB;

CREATE TABLE artistas(
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE seguidores(
id_usuario INT NOT NULL,
id_artista INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_usuario, id_artista),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
) ENGINE = InnoDB;

CREATE TABLE albuns(
id_album INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50) NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
) ENGINE = InnoDB;

CREATE TABLE musicas(
id_musica INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(50) NOT NULL, 
id_album INT NOT NULL,
FOREIGN KEY (id_album) REFERENCES albuns(id_album)
) ENGINE = InnoDB;

CREATE TABLE historico(
id_usuario INT NOT NULL,
id_musica INT NOT NULL,
CONSTRAINT PRIMARY KEY (id_usuario, id_musica),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
FOREIGN KEY (id_musica) REFERENCES musicas(id_musica)
) ENGINE = InnoDB;

INSERT INTO planos (nome_plano, plano_valor)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('univesitário', 5.99);

SELECT * FROM planos;

INSERT INTO usuarios (id_usuario, nome_usuario, usuario_idade, id_plano)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);

SELECT * FROM usuarios;

INSERT INTO artistas (nome_artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

SELECT * FROM artistas;

INSERT INTO albuns (nome_album, id_artista)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);

SELECT * FROM albuns;

INSERT INTO seguidores (id_usuario, id_artista)
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

INSERT INTO musicas (nome_musica, id_album)
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

INSERT INTO historico (id_usuario, id_musica)
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
