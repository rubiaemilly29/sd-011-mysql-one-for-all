DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE PLANOS (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano_nome VARCHAR(15) NOT NULL,
plano_valor DECIMAL (5,2)
) ENGINE = InnoDB;

INSERT INTO PLANOS (plano_nome, plano_valor) VALUES
('gratuito', 0),
('familiar', 7.99),
('universitário', 5.99);

CREATE TABLE USUARIOS (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario_nome VARCHAR(50) NOT NULL,
usuario_idade INT,
usuario_plano INT,
FOREIGN KEY (usuario_plano) REFERENCES PLANOS(plano_id)
) ENGINE = InnoDB;

INSERT INTO USUARIOS (usuario_nome, usuario_idade, usuario_plano) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

CREATE TABLE ARTISTAS (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
artista_nome VARCHAR(50) NOT NULL
) ENGINE = InnoDB;

INSERT INTO ARTISTAS (artista_nome) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

CREATE TABLE ALBUNS (
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_nome VARCHAR(25) NOT NULL,
artista INT,
FOREIGN KEY (artista) REFERENCES ARTISTAS(artista_id)
) ENGINE = InnoDB;

INSERT INTO ALBUNS (album_nome, artista) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

CREATE TABLE MUSICAS (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
musica_nome VARCHAR(50) NOT NULL,
album INT
) ENGINE = InnoDB;

INSERT INTO MUSICAS (musica_nome, album) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me',4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power',4),
('Honey, Let\'s Be Silly',4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

CREATE TABLE HISTORICO (
usuario INT,
musica INT,
FOREIGN KEY (usuario) REFERENCES USUARIOS(usuario_id),
FOREIGN KEY (musica) REFERENCES MUSICAS(musica_id),
CONSTRAINT PRIMARY KEY (usuario, musica)
) ENGINE = InnoDb;

INSERT INTO HISTORICO (usuario, musica) VALUES
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

CREATE TABLE SEGUIDORES (
usuario INT,
artista INT,
FOREIGN KEY (usuario) REFERENCES USUARIOS(usuario_id),
FOREIGN KEY (artista) REFERENCES ARTISTAS(artista_id),
CONSTRAINT PRIMARY KEY (usuario, artista)
) ENGINE = InnoDb;

INSERT INTO SEGUIDORES (usuario, artista) VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);
