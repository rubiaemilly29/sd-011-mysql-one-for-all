DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone; 

CREATE TABLE `artistas` (
  `artista_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome_artista` varchar(50) NOT NULL
) engine = InnoDB;

CREATE TABLE `planos` (
  `plano_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome_plano` VARCHAR(20) NOT NULL,
  `valor_plano` DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE `albums` (
  `album_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome_album` VARCHAR(20) NOT NULL,
  `artista_id` INT NOT NULL,
FOREIGN KEY (`artista_id`) REFERENCES `artistas`(`artista_id`)
) engine = InnoDB;

CREATE TABLE `musicas` (
  `musica_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nome_musica` VARCHAR(50) NOT NULL,
  `album_id` INT NOT NULL,
FOREIGN KEY (`album_id`) REFERENCES `albums`(`album_id`)
) engine = InnoDB;

CREATE TABLE `usuarios` (
  usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome_usuario VARCHAR(50) NOT NULL,
  idade_usuario INT NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE `seguindo_artistas` (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE `historico_de_reproducoes` (
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (usuario_id, musica_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
) engine = InnoDB;

INSERT INTO artistas (nome_artista)
VALUES 
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO planos (nome_plano, valor_plano)
VALUES 
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99);
  
INSERT INTO albums (nome_album, artista_id)
VALUES 
  ('Envious', 1),
  ('Exuberant',  1),
  ('Hallowed Steam',  2),
  ('Incandescent',  3),
  ('Temporary Culture', 4);

INSERT INTO musicas (nome_musica, album_id)
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

INSERT INTO usuarios (nome_usuario, idade_usuario, plano_id)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1);
  
INSERT INTO historico_de_reproducoes (usuario_id, musica_id)
VALUES
  (17, 1),
  (17, 6),
  (17, 14),
  (17, 16),
  (18, 13),
  (18, 17),
  (18, 2),
  (18, 15),
  (19, 4),
  (19, 16),
  (19, 6),
  (20, 3),
  (20, 18),
  (20, 11);

INSERT INTO seguindo_artistas (usuario_id, artista_id)
VALUES
  (17, 1),
  (17, 4),
  (17, 3),
  (18, 1),
  (18, 3),
  (19, 2),
  (19, 1),
  (20, 4);
  