DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;
CREATE TABLE Plano(
    plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(100) NOT NULL,
    valor_plano DECIMAL(5, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE Usuario(
    usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(100) NOT NULL,
    idade_usuario INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id) REFERENCES Plano (plano_id)
) engine = InnoDB;

CREATE TABLE Artista(
    artist_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE Album(
    album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES Artista (artist_id)
) engine = InnoDB;

CREATE TABLE Musica(
    musica_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_musica VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Album (album_id)
) engine = InnoDB;



CREATE TABLE Historico(
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (musica_id) REFERENCES Musica (musica_id)
) engine = InnoDB;

CREATE TABLE Seguidores(
    usuario_id INT NOT NULL,
    artist_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, artist_id),
    FOREIGN KEY (usuario_id) REFERENCES Usuario (usuario_id),
    FOREIGN KEY (artist_id) REFERENCES Artista (artist_id)
) engine = InnoDB;


INSERT INTO Plano (nome_plano, valor_plano)
VALUES
    ('gratuito', 0),
    ('universitário', 5.99),
    ('familiar', 7.99);


INSERT INTO Usuario (nome_usuario, idade_usuario, plano_id)
VALUES
    ('Thati', 23, 1),
    ('Cintia', 35, 3),
    ('Bill', 20, 2),
    ('Roger', 45, 1);


INSERT INTO Artista (nome_artista)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');

INSERT INTO Album (nome_album, artist_id)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);


INSERT INTO Musica (nome_musica, album_id)
Values
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


INSERT INTO Historico (usuario_id, musica_id)
VALUES
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
  

INSERT INTO Seguidores (usuario_id, artist_id)
VALUES 
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
