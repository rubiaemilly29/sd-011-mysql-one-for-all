DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE artistas(
artista_id  SMALLINT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE planos(
plano_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(20) NOT NULL,
valor VARCHAR(6) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
usuario_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(30) NOT NULL,
idade INT,
plano_id SMALLINT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE albuns(
album_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artista_id SMALLINT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE musicas(
musica_id SMALLINT PRIMARY KEY AUTO_INCREMENT,
musica VARCHAR(50) NOT NULL,
album_id SMALLINT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE usuario_musica(
usuario_id SMALLINT NOT NULL,
musica_id SMALLINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (musica_id) REFERENCES musicas(musica_id),
CONSTRAINT PRIMARY KEY(usuario_id, musica_id)
) engine = InnoDB;

CREATE TABLE usuario_seguindo_artista(
usuario_id SMALLINT NOT NULL,
artista_id SMALLINT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id),
CONSTRAINT PRIMARY KEY(usuario_id, artista_id)
) engine = InnoDB;

INSERT INTO artistas(artista) VALUES
('Walter Phoenix'), 
('Peter Strong'),
('Lance Day'), 
('Freedie Shannon');

INSERT INTO albuns(album, artista_id) VALUES
('Envious', 1), 
('Exuberant', 1),
('Hallowed Steam', 2), 
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO planos(plano, valor) VALUES
('gratuito', 0), 
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO usuarios(usuario, idade, plano_id) VALUES
('Thati', 23, 1), 
('Cintia', 35, 2),
('Bill', 20, 3), 
('Roger', 45, 1);

INSERT INTO musicas(musica, album_id) VALUES
('Soul For Us', 1), 
('Reflections Of Magic', 1),
('Dance With Her Own', 1), 
('Troubles Of My Inner Fire', 2),
("Time Fireworks", 2),
("Magic Circus", 3),
("Honey, So Do I", 3),
("Sweetie Let's Go Wild", 3),
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

INSERT INTO usuario_seguindo_artista(usuario_id, artista_id) VALUES
(1, 1),
(1, 3),
(1, 4),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);

INSERT INTO usuario_musica(usuario_id, musica_id) VALUES
(1, 1),
(1, 6),
(1, 15),
(1, 17),
(2, 2),
(2, 14),
(2, 16),
(2, 18),
(3, 4),
(3, 6),
(3,17),
(4, 3),
(4, 12),
(4, 19);
