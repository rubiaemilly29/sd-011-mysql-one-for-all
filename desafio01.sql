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

SELECT * FROM artista

SHOW TABLES;