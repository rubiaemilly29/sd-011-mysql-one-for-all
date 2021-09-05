DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE cancoes (
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancoes VARCHAR(200),
artista_id INT,    
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
)ENGINE=InnoDB;

CREATE TABLE artista (
  artista_id INT PRIMARY KEY AUTO_INCREMENT,      
  artista VARCHAR (50)    
)ENGINE=InnoDB;

CREATE TABLE plano (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,   
  plano VARCHAR(30),    
  valor_plano DECIMAL(4,2)
) ENGINE=InnoDB;

CREATE TABLE album (
  album_id INT PRIMARY KEY AUTO_INCREMENT,    
  album VARCHAR(50),    
  artista_id INT,    
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) ENGINE=InnoDB;

CREATE TABLE seguindo (
  usuario_id INT,    
  artista_id INT,    
  PRIMARY KEY (usuario_id, artista_id)
) ENGINE=InnoDB;

CREATE TABLE usuario (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,    
  usuario VARCHAR(50),    
  idade TINYINT,    
  plano_id INT,    
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
)	ENGINE=InnoDB;

CREATE TABLE historico (
  cancoes_id INT,    
  user_id INT,    
  PRIMARY KEY (cancoes_id, user_id)
) ENGINE=InnoDB;
  
INSERT INTO album(album)
VALUES
('Envious'),('Exuberant'),('Hallowed Steam'),('Incandescent'),('Temporary Culture');

INSERT INTO artista(artista)
VALUES
('Walter Phoenix'),('Peter Strong'),('Lance Day'),('Freedie Shannon');

INSERT INTO cancoes(nome_cancoes)
VALUES('Soul For Us'), ('Reflections Of Magic'), ('Dance With Her Own'), 
('Troubles Of My Inner Fire'), ('Time Fireworks'), ('Magic Circus'),
('Honey, So Do I'), ("Sweetie, Let's Go Wild"), ('She Knows'),
('Fantasy For Me'), ('Celebration Of More'), ('Rock His Everything'),('Home Forever'), 
('Diamond Power'), ("Honey, Let's Be Silly"),
('Thang Of Thunder'), ('Words Of Her Life'), ('Without My Streets');

INSERT INTO plano(plano, valor_plano)
VALUES('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);

INSERT INTO usuario(usuario, idade)
VALUES('Thati', 23), ('Cintia', 35), ('Bill', 20), ('Roger', 45);
