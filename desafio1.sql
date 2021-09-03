DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE albums (
  album_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album_nome varchar(100) NOT NULL,
  artista_id int NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE=InnoDB;

CREATE TABLE artistas (
  artista_id int NOT PRIMARY KEY NULL AUTO_INCREMENT,
  artista_nome varchar(100) NOT NULL,
) ENGINE=InnoDB;

CREATE TABLE artistas_seguidos (
  usuario_id int NOT NULL,
  artista_id int NOT NULL,
  PRIMARY KEY (usuario_id,artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) ENGINE=InnoDB;

CREATE TABLE historico (
  historico_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  usuario_id int NOT NULL,
  musica_id int NOT NULL,
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
) ENGINE=InnoDB;

CREATE TABLE musicas (
  musica_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_musica varchar(100) NOT NULL,
  artista_id int NOT NULL,
  album_id int NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  FOREIGN KEY (album_id) REFERENCES albums (album_id)
) ENGINE=InnoDB;

CREATE TABLE planos (
  plano_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  plano varchar(100) NOT NULL,
  valor_plano double unsigned DEFAULT (0),
) ENGINE=InnoDB;

CREATE TABLE usuarios (
  usuario_id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  usuario varchar(50) NOT NULL,
  idade int NOT NULL,
  plano_id int NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) ENGINE=InnoDB;

INSERT INTO usuarios VALUES (1,'Thati',23,1),(2,'Cintia',35,2),(3,'Bill',20,3),(4,'Roger',45,1);
INSERT INTO artistas VALUES (1,'Walter Phoenix'),(2,'Peter Strong'),(3,'Lance Day'),(4,'Freedie Shannon');
INSERT INTO planos VALUES (1,'Gratuito',0),(2,'Familiar',7.99),(3,'Universitário',5.99);
INSERT INTO musicas VALUES (1,'Soul For Us',1,1),(2,'Reflections Of Magic',1,1),(3,'Dance With Her Own',1,1),(4,'Troubles Of My Inner Fire',1,2),(5,'Time Fireworks',1,2),(6,'Magic Circus',2,3),(7,'Honey, So Do I',2,3),(8,'Sweetie, Let\'s Go Wild',2,3),(9,'She Knows',2,3),(10,'Fantasy For Me',3,4),(11,'Celebration Of More',3,4),(12,'Rock His Everything',3,4),(13,'Home Forever',3,4),(14,'Diamond Power',3,4),(15,'Honey, Let\'s Be Silly',3,4),(16,'Thang Of Thunder',4,5),(17,'Words Of Her Life',4,5),(18,'Without My Streets',4,5);
INSERT INTO historico VALUES (1,1,1),(2,1,6),(3,1,14),(4,1,16),(5,2,13),(6,2,17),(7,2,2),(8,2,15),(9,3,4),(10,3,16),(11,3,6),(12,4,3),(13,4,18),(14,4,11);
INSERT INTO artistas_seguidos VALUES (1,1),(2,1),(3,1),(3,2),(1,3),(2,3),(1,4),(4,4);
INSERT INTO albums VALUES (1,'Envious',1),(2,'Exuberant',1),(3,'Hallowed Steam',2),(4,'Incandescent',3),(5,'Temporary Culture',4);
