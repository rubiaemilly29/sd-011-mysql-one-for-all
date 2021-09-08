DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;


CREATE TABLE plano(
  id_plano INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(15) NOT NULL,
  valor DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
  id_usuario INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_usuario VARCHAR(10) NOT NULL,
  idade INT NOT NULL,
  id_plano INT,    
  FOREIGN KEY (id_plano) REFERENCES plano (id_plano)
) engine = InnoDB;

CREATE TABLE artistas(
  id_artista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
  id_album INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_album VARCHAR(50) NOT NULL,
  id_artista INT,
  FOREIGN KEY (id_artista) REFERENCES artistas (id_artista)
) engine = InnoDB;

CREATE TABLE cancao(
  id_cancao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_cancao VARCHAR(50) NOT NULL,
  id_album INT,
  FOREIGN KEY (id_album) REFERENCES album (id_album)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
  id_cancao INT,
  id_usuario INT,
  CONSTRAINT PRIMARY KEY(id_usuario, id_cancao),
  FOREIGN KEY (id_cancao) REFERENCES cancao (id_cancao),
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)

) engine = InnoDB;

CREATE TABLE seguindo_artistas(
  id_artista INT,
  id_usuario INT,
  CONSTRAINT PRIMARY KEY(id_artista, id_usuario),
  FOREIGN KEY (id_artista) REFERENCES artistas (id_artista),
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
) engine = InnoDB;

INSERT INTO plano (nome_plano, valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO artista (nome_artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');

INSERT INTO album (nome_album, id_artista)
VALUES
  ('Envious', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Exuberant', 1),
  ('Temporary Culture', 4);

INSERT INTO usuarios (nome_usuario, idade, id_plano)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);

INSERT INTO cancao (nome_cancao, id_album)
VALUES
  ('Soul For Us', 1),
  ('Thang Of Thunder', 5),
  ('Troubles Of My Inner Fire', 2),
  ('Without My Streets', 5),
  ('Words Of Her Life', 5),
  ('Time Fireworks', 2),
  ('Honey, So Do I', 3),
  ("Honey, Let's Be Silly", 4),
  ('Magic Circus', 3),
  ('Rock His Everything', 4);
  ('Celebration Of More', 4),
  ('Dance With Her Own', 1),
  ('Reflections Of Magic', 1),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Diamond Power', 4),
  ('Home Forever', 4),

INSERT INTO historico_de_reproducoes (id_usuario, id_cancao)
VALUES
  (1, 8),
  (1, 6),
  (2, 4),
  (2, 12),
  (2, 7),
  (2, 5),
  (3, 10),
  (3, 9),
  (3, 6),
  (4, 2),
  (1, 3),
  (1, 9),
  (4, 11),
  (4, 1);

INSERT INTO seguindo_artistas (id_usuario, id_artista)
VALUES
  (1, 1),
  (1, 4),
  (3, 2),
  (2, 1),
  (2, 3),
  (3, 1),
  (1, 3),
  (4, 4);
