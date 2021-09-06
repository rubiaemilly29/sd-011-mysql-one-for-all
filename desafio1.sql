DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;
CREATE TABLE artista (
  artista_id INT PRIMARY KEY AUTO_INCREMENT,      
  artista VARCHAR (50) NOT NULL   
)ENGINE=InnoDB;

CREATE TABLE cancoes (
  cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_cancoes VARCHAR(200),
  artista_id INT,    
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
)ENGINE=InnoDB;

CREATE TABLE plano (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,   
  plano VARCHAR(30) NOT NULL,    
  valor_plano DECIMAL(4,2) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE album (
  album_id INT PRIMARY KEY AUTO_INCREMENT,    
  album VARCHAR(50) NOT NULL,    
  artista_id INT NOT NULL,    
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) ENGINE=InnoDB;

CREATE TABLE seguindo (
  usuario_id INT,    
  artista_id INT,    
  CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) ENGINE=InnoDB;

CREATE TABLE usuario (
  usuario_id INT PRIMARY KEY AUTO_INCREMENT,    
  usuario VARCHAR(50) NOT NULL,    
  idade TINYINT NOT NULL,    
  plano_id INT NOT NULL,    
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
)	ENGINE=InnoDB;

CREATE TABLE historico (
  cancoes_id INT,    
  usuario_id INT,    
  CONSTRAINT PRIMARY KEY (cancoes_id, usuario_id),
  FOREIGN KEY (cancoes_id) REFERENCES cancoes(cancoes_id),
  FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) ENGINE=InnoDB;
  
INSERT INTO album(album, artista_id)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO artista(artista)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO cancoes(nome_cancoes, artista_id)
VALUES
('Soul For Us', 1), --1
('Reflections Of Magic', 1), -- 2
('Dance With Her Own', 1), -- 3
('Troubles Of My Inner Fire', 2), --4
('Time Fireworks', 2), --5 
('Magic Circus', 3),--6
('Honey, So Do I', 3), --7
("Sweetie, Let's Go Wild", 3), --8
('She Knows', 3), --9
('Fantasy For Me', 4), --10
('Celebration Of More', 4), --11 
('Rock His Everything', 4), --12
('Home Forever', 4), --13
('Diamond Power', 4), --14
("Honey, Let's Be Silly", 4),--15
('Thang Of Thunder', 5), --16
('Words Of Her Life', 5), --17
('Without My Streets', 5);--18

INSERT INTO plano(plano, valor_plano)
VALUES
('Gratuito', 0), 
('Familiar', 7.99), 
('universitário', 5.99);

INSERT INTO usuario(usuario, idade, plano_id)
VALUES
('Thati', 23, 1), 
('Cintia', 35, 2), 
('Bill', 20, 3), 
('Roger', 45, 1);

INSERT INTO historico(cancoes_id, usuario_id)
VALUES
(1, 1),
(6, 1),
(14, 1),
(16, 1),
(13, 2),
(17, 2),
(2, 2),
(15, 2),
(4 ,3),
(16 ,3),
(6 ,3),
(3 ,4),
(18 ,4),
(11 ,4);

INSERT INTO seguindo(usuario_id, artista_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
