DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plano(
  plano_id INT AUTO_INCREMENT,
  titulo VARCHAR(40) NOT NULL,
  valor DECIMAL(5,2) NOT NULL,
  PRIMARY KEY(plano_id)
) ENGINE=InnoDb;

INSERT INTO plano (titulo, valor)
VALUES 
("gratuito", 0),
("universitário",5.99),
("familiar", 7.99);


CREATE TABLE usuario(
  usuario_id INT AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  PRIMARY KEY(usuario_id),
  FOREIGN KEY (plano_id) REFERENCES plano (plano_id)
) ENGINE=InnoDb;

INSERT INTO usuario(nome,idade,plano_id)
VALUES 
("Thati",23,1),
("Cintia",35,3),
("Bill",20,2),
("Roger",45,1);

CREATE TABLE artista(
  artista_id INT AUTO_INCREMENT,
  nome_do_artista VARCHAR(80) NOT NULL, 
  PRIMARY KEY(artista_id)
) ENGINE=InnoDb;

INSERT INTO artista(nome_do_artista)
VALUES 
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

CREATE TABLE album(
  album_id INT AUTO_INCREMENT,
  titulo_do_album VARCHAR(80) NOT NULL, 
  artista_id INT NOT NULL,
  PRIMARY KEY(album_id),
  FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) ENGINE=InnoDb;

INSERT INTO album(titulo_do_album, artista_id)
VALUES 
("Envious", 1),
("Exuberant",1),
("Hallowed Steam",2),
("Incandescent",3),
("Temporary Culture",4);

CREATE TABLE musica(
  musica_id INT AUTO_INCREMENT,
  titulo_da_musica VARCHAR(80) NOT NULL, 
  album_id INT NOT NULL,
  PRIMARY KEY(musica_id),
  FOREIGN KEY (album_id) REFERENCES album (album_id)
) ENGINE=InnoDb;

INSERT INTO musica
  (titulo_da_musica, album_id) VALUES
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

SELECT * FROM musica;


SHOW TABLES;