DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE Plano(
Plano_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Tipo VARCHAR(30) NOT NULL,
Plano_Valor DECIMAL(5 , 2 )
)engine = InnoDB;

INSERT INTO Plano(Tipo, Plano_Valor)
VALUES ('Gratuito', 0), ('Universitário', 5.99), ('Familiar', 7.99);

CREATE TABLE Usuario(
Usuario_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(50) NOT NULL,
Idade INT NOT NULL,
Plano_ID INT NOT NULL,
FOREIGN KEY (Plano_ID) REFERENCES Plano(Plano_id) 
) engine = InnoDB;

INSERT INTO Usuario(Nome, Idade, Plano_ID)
VALUES ('Thati', 23, 1),('Cintia', 35, 3),('Bill', 20, 2),('Roger', 45, 1);

CREATE TABLE Artista(
Artista_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO Artista(Nome)
VALUES ('Walter Phoenix'), ('Peter Strong'), ('Lance Day'), ('Freedie Shannon');

CREATE TABLE Album(
Album_ID INT PRIMARY KEY AUTO_INCREMENT,
Artista_ID INT NOT NULL,
Titulo VARCHAR(50) NOT NULL,
FOREIGN KEY (Artista_ID)
REFERENCES Artista (Artista_ID)
) engine = InnoDB;

INSERT INTO Album(Artista_ID, Titulo)
VALUES (1, 'Envious'), (1, 'Exuberant'), (2, 'Hallowed Steam'), (3, 'Incandescent'), (4, 'Temporary Culture');

CREATE TABLE Cancao(
Cancao_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
Album_ID INT NOT NULL,
Artista_ID INT NOT NULL,
Nome VARCHAR(50) NOT NULL,
FOREIGN KEY (Album_ID)
REFERENCES Album(Album_ID),
FOREIGN KEY (Artista_ID)
REFERENCES Artista (Artista_ID)
) engine = InnoDB;

INSERT INTO Cancao(Album_ID, Artista_ID, Nome)
VALUES (1, 1, 'Soul For Us'), (1, 1, 'Reflections Of Magic'), (1, 1, 'Dance With Her Own'),
(2, 1, 'Troubles Of My Inner Fire'), (2, 1, 'Time Fireworks'),
(3, 2, 'Magic Circus'), (3, 2, 'Honey, So Do I'), (3, 2, "Sweetie, Let's Go Wild"), (3, 2, 'She Knows'),
(4, 3, 'Fantasy For Me'),
(4, 3, 'Celebration Of More'),
(4, 3, 'Rock His Everything'),
(4, 3, 'Home Forever'),
(4, 3, 'Diamond Power'),
(4, 3, "Honey, Let's Be Silly"),
(5, 4, 'Thang Of Thunder'), (5, 4, 'Words Of Her Life'), (5, 4, 'Without My Streets');

CREATE TABLE Seguindo_Artistas(
Artista_ID INT NOT NULL,
Usuario_ID INT NOT NULL,
FOREIGN KEY (Artista_ID)
REFERENCES Artista (Artista_ID),
FOREIGN KEY (Usuario_ID)
REFERENCES Usuario (Usuario_ID),
CONSTRAINT PRIMARY KEY (Usuario_ID , Artista_ID)
) engine = InnoDB;

INSERT INTO Seguindo_Artistas(Artista_ID, Usuario_ID)
VALUES (1, 1), (1, 2), (1, 3), (2, 3), (3, 1), (3, 2), (4, 1), (4, 4);

CREATE TABLE Historico_De_Reproducao(
Cancao_ID INT NOT NULL,
Usuario_ID INT NOT NULL,
FOREIGN KEY (Cancao_ID) 
REFERENCES Cancao(Cancao_ID),
FOREIGN KEY (Usuario_ID) 
REFERENCES Usuario(Usuario_ID),
CONSTRAINT PRIMARY KEY (Cancao_ID , Usuario_ID)
) engine = InnoDB;

INSERT INTO Historico_De_Reproducao(Usuario_ID, Cancao_ID)
VALUES (1, 1),(1, 6),(1, 14),(1, 16),
(2, 13),(2, 17),(2, 2),(2, 15),
(3, 4),(3, 16),(3, 6),
(4, 3),(4, 18),(4, 11);
