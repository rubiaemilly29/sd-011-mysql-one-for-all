DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(20) NOT NULL,
    valor_plano DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.artistas(
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES SpotifyClone.planos(plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.albuns(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproducoes(
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    historico_de_reproducoes VARCHAR(100) NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
    FOREIGN KEY (usuario_id) REFERENCES  SpotifyClone.usuarios(usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES  SpotifyClone.cancoes(cancao_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    seguindo_artistas VARCHAR(100) NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuarios(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.planos (plano, valor_plano)
VALUES
  ('gratuito', 0.00),
  ('universitario', 5.99),
  ('familiar', 7.99);

INSERT INTO SpotifyClone.artistas (artista)
VALUES
  ('Freedie Shannon'),
  ('Lance Day'),
  ('Peter Strong'),
  ('Walter Phoenix');
  
INSERT INTO SpotifyClone.albuns (album, artista_id)
VALUES
  ('Envious', 4),
  ('Exuberant', 4),
  ('Hallowed Steam', 3),
  ('Incandescent', 2),
  ('Temporary Culture', 1);

INSERT INTO SpotifyClone.usuarios (usuario, idade, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 3),
  ('Bill', 20, 2),
  ('Roger', 45, 1);

INSERT INTO SpotifyClone.cancoes (cancao, album_id)
VALUES
  ('Celebration Of More', 4),
  ('Dance With Her Own', 1),
  ('Diamond Power', 4),
  ('Fantasy For Me', 4),
  ('Home Forever', 4),
  ("Honey, Let's Be Silly", 4),
  ('Honey, So Do I', 3),
  ('Magic Circus', 3),
  ('Reflections Of Magic', 1),
  ('Rock His Everything', 4),
  ('She Knows', 3),
  ('Soul For Us', 1),
  ("Sweetie, Let's Go Wild", 3),
  ('Thang Of Thunder', 5),
  ('Time Fireworks', 2),
  ('Troubles Of My Inner Fire', 2),
  ('Without My Streets', 5),
  ('Words Of Her Life', 5);

INSERT INTO SpotifyClone.reproducoes (usuario_id, cancao_id, historico_de_reproducoes)
VALUES
  (1, 12, 'Soul For Us'),
  (1, 8, 'Magic Circus'),
  (1, 3, 'Diamond Power'),
  (1, 14, 'Thang Of Thunder'),
  (2, 5, 'Home Forever'),
  (2, 18, 'Words Of Her Life'),
  (2, 9, 'Reflections Of Magic'),
  (2, 6, "Honey, Let's Be Silly"),
  (3, 16, 'Troubles Of My Inner Fire'),
  (3, 14, 'Thang Of Thunder'),
  (3, 8, 'Magic Circus'),
  (4, 2, 'Dance With Her Own'),
  (4, 17, 'Without My Streets'),
  (4, 1, 'Celebration Of More');

INSERT INTO SpotifyClone.seguindo (usuario_id, artista_id, seguindo_artistas)
VALUES
  (1, 4, 'Walter Phoenix'),
  (1, 1, 'Freedie Shannon'),
  (1, 2, 'Lance Day'),
  (2, 4, 'Walter Phoenix'),
  (2, 2, 'Lance Day'),
  (3, 3, 'Peter Strong'),
  (3, 4, 'Walter Phoenix'),
  (4, 1, 'Freedie Shannon');
