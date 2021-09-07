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

SELECT * FROM plano
