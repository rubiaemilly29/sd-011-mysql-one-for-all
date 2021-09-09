CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(20) UNIQUE NOT NULL,
valor DECIMAL(5,2)
);

CREATE TABLE IF NOT EXISTS artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) UNIQUE NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE IF NOT EXISTS usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(40) UNIQUE NOT NULL,
idade SMALLINT,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
);

CREATE TABLE IF NOT EXISTS usuario_artista(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE IF NOT EXISTS cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS usuario_cancao(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id)
);


INSERT INTO SpotifyClone.plano(plano, valor)
VALUES('familiar', 7.99), ('gratuito', 0.00), ('universitário', 5.99);

INSERT INTO SpotifyClone.artista(artista)
VALUES('Freedie Shannon'), ('Lance Day'), ('Peter Strong'), ('Walter Phoenix');

INSERT INTO SpotifyClone.album(album, artista_id)
VALUES('Envious', 4), ('Exuberant', 4), ('Hallowed Steam', 3),
('Incandescent', 2), ('Temporary Culture', 1);

INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id)
VALUES('Thati', 23, 2), ('Cintia', 35, 1), ('Bill', 20 , 3), ('Roger', 45, 2);

INSERT INTO SpotifyClone.usuario_artista(usuario_id, artista_id)
VALUES(1, 4), (1, 1), (1, 2), (2, 4), (2, 2), (3, 3), (3, 4), (4, 1);

INSERT INTO cancao(cancao, album_id)
VALUES ('Soul For Us', 1), ('Reflections Of Magic', 1), ('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2), ('Time Fireworks', 2), ('Magic Circus', 3 ),
('Honey, So Do I', 3), ('Sweetie, Let''s Go Wild', 3), ('She Knows', 3 ),
('Fantasy For Me', 4), ('Celebration Of More', 4), ('Rock His Everything', 4),
('Home Forever', 4), ('Diamond Power', 4), ('Honey, Let''s Be Silly', 4),
('Thang Of Thunder', 5), ('Words Of Her Life', 5), ('Without My Streets', 5);

INSERT INTO SpotifyClone.usuario_cancao(usuario_id, cancao_id)
VALUES(1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2 ,17), (2, 2),
(2, 15), (3, 4), (3, 6), (3, 16), (4, 3), (4, 11), (4, 18);
