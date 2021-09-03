DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Planos(
plano_id INT AUTO_INCREMENT NOT NULL,
plano VARCHAR(20) NOT NULL,
valor_plano DOUBLE(4, 2) NOT NULL,
PRIMARY KEY (plano_id)
) engine=InnoDB;

CREATE TABLE Artistas(
artista_id INT AUTO_INCREMENT NOT NULL,
artista VARCHAR(30),
PRIMARY KEY (artista_id)
) engine=InnoDB;

CREATE TABLE Albuns(
album_id INT AUTO_INCREMENT NOT NULL,
album VARCHAR(30),
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id),
PRIMARY KEY (album_id)
) engine=InnoDB;

CREATE TABLE Cancoes(
cancao_id INT AUTO_INCREMENT NOT NULL,
cancao VARCHAR(40),
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES Albuns(album_id),
PRIMARY KEY (cancao_id)
) engine=InnoDB;

CREATE TABLE Usuarios(
usuario_id INT AUTO_INCREMENT NOT NULL,
usuario VARCHAR(20) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
PRIMARY KEY (usuario_id),
FOREIGN KEY (plano_id) REFERENCES Planos(plano_id)
) engine=InnoDB;

CREATE TABLE SeguindoArtistas(
usuario_id INT,
artista_id INT,
FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
) engine=InnoDB;

CREATE TABLE HistoricoMusicas(
usuario_id INT,
cancao_id INT,
FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES Cancoes(cancao_id)
) engine=InnoDB;

INSERT INTO Usuarios (usuario, idade, plano_id) VALUES
("Thati", 23, 1),
("Cintia", 35, 2),
("Bill", 20, 3),
("Roger", 45, 1);

INSERT INTO Planos (plano, valor_plano) VALUES
("gratuito", 0),
("familiar", 7.99),
("universitário", 5.99);

INSERT INTO Artistas (artista) VALUES
("Walter Phoenix"),
("Peter Strong"),
("Lance Day"),
("Freedie Shannon");

INSERT INTO Albuns (album, artista_id) VALUES
("Envious", 1),
("Exuberant", 1),
("Hallowed Steam", 2),
("Incandescent", 3),
("Temporary Culture", 4);

INSERT INTO Cancoes (cancao, album_id) VALUES
("Soul For Us", 1),
("Reflections Of Magic",2),
("Dance With Her Own",3),
("Troubles Of My Inner Fire",4),
("Time Fireworks",5),
("Magic Circus",6),
("Honey, So Do I",7),
("Sweetie, Let's Go Wild",8),
("She Knows",9),
("Fantasy For Me", 10),
("Celebration Of More",11),
("Rock His Everything",12),
("Home Forever",13),
("Diamond Power", 14),
("Honey, Let's Be Silly", 15),
("Thang Of Thunder", 16),
("Words Of Her Life", 17),
("Without My Streets", 18);

INSERT INTO SeguindoArtistas (usuario_id, artista_id) VALUES
(1,1), 
(1,4), 
(1,3), 
(2,1), 
(2,3), 
(3,2), 
(3,1), 
(4,4);

INSERT INTO HistoricoMusicas (usuario_id, cancao_id) VALUES
(1,1),
(1,6),
(1,4),
(1,5),
(2,13),
(2,17),
(2,2),
(2,15),
(3,4),
(3,16),
(3,6),
(4,3),
(4,18),
(4,11);