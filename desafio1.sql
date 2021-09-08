DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
    plano_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    plano VARCHAR(50) NOT NULL,
    valor_plano DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE Usuarios(
    usuario_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
    REFERENCES SpotifyClone.Planos(plano_id)
) engine = InnoDB;

CREATE TABLE Artistas(
  artista_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Albuns(
    album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
    REFERENCES SpotifyClone.Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE Cancoes(
    cancoes_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cancoes VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id)
    REFERENCES SpotifyClone.Albuns (album_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
    REFERENCES SpotifyClone.Usuarios (usuario_id),
    FOREIGN KEY (artista_id)
    REFERENCES SpotifyClone.Artistas (artista_id)
) engine = InnoDB;

CREATE TABLE Historico_reproducoes(
    usuario_id INT NOT NULL,
    cancoes_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, cancoes_id),
    FOREIGN KEY (usuario_id)
    REFERENCES SpotifyClone.Usuarios (usuario_id),
    FOREIGN KEY (cancoes_id)
    REFERENCES SpotifyClone.Cancoes (cancoes_id)
) engine = InnoDB;

INSERT INTO Planos (plano, valor_plano)
VALUES
  ('gratuito', 0),
  ('universitário', 5.99),
  ('familiar', 7.99);
  
INSERT INTO Usuarios (plano_id, usuario, idade)
VALUES
  (1, 'Thati', 23),
  (3, 'Cintia', 35),
  (2, 'Bill', 20),
  (1, 'Roger', 45);
  
INSERT INTO Artistas (artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO Albuns (album, artista_id)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO Cancoes (cancoes, album_id)
VALUES
  ("Soul For Us", 1),
  ("Reflections Of Magic", 1),
  ("Dance With Her Own", 1),
  ("Troubles Of My Inner Fire", 2),
  ("Time Fireworks", 2),
  ("Magic Circus", 3),
  ("Honey, So Do I", 3),
  ("Sweetie, Let's Go Wild", 3),
  ("She Knows", 3),
  ("Fantasy For Me", 4),
  ("Celebration Of More", 4),
  ("Rock His Everything", 4),
  ("Home Forever", 4),
  ("Diamond Power", 4),
  ("Honey, Let's Be Silly", 4),
  ("Thang Of Thunder", 5),
  ("Words Of Her Life", 5),
  ("Without My Streets", 5);
  
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
 
INSERT INTO Historico_reproducoes (usuario_id, cancoes_id)
VALUES
  (1 , 1),
  (1 , 6),
  (1 , 14),
  (1 , 16),
  (2 , 13),
  (2 , 17),
  (2 , 2),
  (2 , 15),
  (3 , 4),
  (3 , 16),
  (3 , 6),
  (4 , 3),
  (4 , 18),
  (4, 11);
