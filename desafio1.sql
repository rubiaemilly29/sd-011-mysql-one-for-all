DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas (
  artista_id INT AUTO_INCREMENT,
  artista_nome varchar(100) NOT NULL,
  CONSTRAINT PRIMARY KEY(artista_id)
) ENGINE=InnoDB;
INSERT INTO artistas(artista_nome) VALUES ('Walter Phoenix'),('Peter Strong'),('Lance Day'),('Freedie Shannon');

CREATE TABLE planos (
  plano_id INT AUTO_INCREMENT,
  plano varchar(100) NOT NULL,
  valor_plano double,
  CONSTRAINT PRIMARY KEY(plano_id)
) ENGINE=InnoDB;
INSERT INTO planos(plano,valor_plano ) VALUES ('gratuito', '0'),
  ('familiar', '7.99'),
  ('universitário', '5.99');

CREATE TABLE usuarios (
  usuario_id INT AUTO_INCREMENT,
  usuario varchar(50) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(usuario_id),
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) ENGINE=InnoDB;
INSERT INTO usuarios(usuario, idade, plano_id) VALUES ('Thati',23,1),('Cintia',35,2),('Bill',20,3),('Roger',45,1);

CREATE TABLE albums (
  album_id INT AUTO_INCREMENT,
  album_nome varchar(100) NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(album_id),
  FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) ENGINE=InnoDB;
INSERT INTO albums(album_nome,artista_id) VALUES ('Envious',1),('Exuberant',1),('Hallowed Steam',2),('Incandescent',3),('Temporary Culture',4);


CREATE TABLE artistas_seguidos (
  usuario_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) ENGINE=InnoDB;
INSERT INTO artistas_seguidos(usuario_id,artista_id) VALUES (1,1),(2,1),(3,1),(3,2),(1,3),(2,3),(1,4),(4,4);

CREATE TABLE musicas (
  musica_id INT NOT NULL AUTO_INCREMENT,
  nome_musica varchar(100) NOT NULL,
  artista_id INT NOT NULL,
  album_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(musica_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
  FOREIGN KEY (album_id) REFERENCES albums (album_id)
) ENGINE=InnoDB;
INSERT INTO musicas(nome_musica,artista_id, album_id ) VALUES ('Soul For Us',1,1),('Reflections Of Magic',1,1),('Dance With Her Own',1,1),('Troubles Of My Inner Fire',1,2),('Time Fireworks',1,2),('Magic Circus',2,3),('Honey, So Do I',2,3),("Sweetie, Let\'s Go Wild",2,3),('She Knows',2,3),('Fantasy For Me',3,4),('Celebration Of More',3,4),('Rock His Everything',3,4),('Home Forever',3,4),('Diamond Power',3,4),("Honey, Let\'s Be Silly",3,4),("Thang Of Thunder",4,5),('Words Of Her Life',4,5),('Without My Streets',4,5);

CREATE TABLE historico (
  historico_id INT NOT NULL AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY(historico_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
  FOREIGN KEY (musica_id) REFERENCES musicas (musica_id)
) ENGINE=InnoDB;

INSERT INTO historico(usuario_id,musica_id)VALUES (1,1),(1,6),(1,14),(1,16),(2,13),(2,17),(2,2),(2,15),(3,4),(3,16),(3,6),(4,3),(4,18),(4,11);
