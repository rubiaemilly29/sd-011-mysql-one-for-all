CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.Planos (
PlanoID INT AUTO_INCREMENT,
Plano VARCHAR(30) NOT NULL,
Valor DOUBLE NOT NULL,
PRIMARY KEY (PlanoID)
);

CREATE TABLE SpotifyClone.Usuarios (
UsuarioID INT AUTO_INCREMENT,
Usuario VARCHAR(100) NOT NULL,
Idade TINYINT NOT NULL,
PlanoID INT NOT NULL,
PRIMARY KEY (UsuarioID),
FOREIGN KEY (PlanoID) REFERENCES SpotifyClone.Planos (PlanoID)
);

CREATE TABLE SpotifyClone.Artistas (
ArtistaID INT AUTO_INCREMENT,
Artista VARCHAR(100),
PRIMARY KEY (ArtistaID)
);

CREATE TABLE SpotifyClone.Albuns (
AlbumID INT AUTO_INCREMENT,
Album VARCHAR(100) NOT NULL,
ArtistaID INT NOT NULL,
PRIMARY KEY (AlbumID),
FOREIGN KEY (ArtistaID) REFERENCES SpotifyClone.Artistas (ArtistaID)
);

CREATE TABLE SpotifyClone.Cancoes_album (
CancaoID INT AUTO_INCREMENT,
Cancao VARCHAR (80) NOT NULL,
AlbumID INT NOT NULL,
PRIMARY KEY (CancaoID),
FOREIGN KEY (AlbumID) REFERENCES SpotifyClone.Albuns (AlbumID)
);

CREATE TABLE SpotifyClone.Seguindo_artistas (
UsuarioID INT NOT NULL,
ArtistaID INT NOT NULL,
PRIMARY KEY (UsuarioID, ArtistaID),
FOREIGN KEY (UsuarioID) REFERENCES SpotifyClone.Usuarios (UsuarioID),
FOREIGN KEY (ArtistaID) REFERENCES SpotifyClone.Artistas (ArtistaID)
);

CREATE TABLE SpotifyClone.Historico_reproducoes (
UsuarioID INT NOT NULL,
CancaoID INT NOT NULL,
PRIMARY KEY (UsuarioID, CancaoID),
FOREIGN KEY (UsuarioID) REFERENCES SpotifyClone.Usuarios (UsuarioID),
FOREIGN KEY (CancaoID) REFERENCES SpotifyClone.Cancoes_album (CancaoID)
);

INSERT INTO SpotifyClone.Planos (Plano, Valor) VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SpotifyClone.Usuarios (Usuario, Idade, PlanoID) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SpotifyClone.Artistas (Artista) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.Albuns (Album, ArtistaID) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO SpotifyClone.Cancoes_album (Cancao, AlbumID) VALUES
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

INSERT INTO SpotifyClone.Seguindo_artistas (UsuarioID, ArtistaID) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO SpotifyClone.Historico_reproducoes (UsuarioID, CancaoID) VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
