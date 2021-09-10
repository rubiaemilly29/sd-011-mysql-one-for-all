CREATE SCHEMA IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
CREATE TABLE plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
plano_id INT NOT NULL,
usuario VARCHAR(100) NOT NULL,
idade INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES plano(plano_id)
) engine = InnoDB;

CREATE TABLE artista(
artista_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
artista_id INT NOT NULL,
album VARCHAR(100) NOT NULL,
FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
album_id INT NOT NULL,
cancao VARCHAR(100) NOT NULL,
FOREIGN KEY(album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY(cancao_id) REFERENCES cancao(cancao_id)
) engine = InnoDB;

CREATE TABLE seguidores(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

INSERT INTO plano(plano, valor_plano) VALUES 
('gratuito', 0), 
('familiar', 7.99), 
('universitário', 5.99);

INSERT INTO usuario (plano_id, usuario, idade) VALUES 
(1, 'Thati', 23),
(2, 'Cintia', 35),
(3, 'Bill', 20),
(1, 'Roger', 45);

INSERT INTO artista(artista) VALUES 
('Walter Phoenix'), 
('Peter Strong'), 
('Lance Day'), 
('Freedie Shannon');

INSERT INTO album(album_id, artista_id, album) VALUES 
(1, 1, 'Envious'), 
(2, 1, 'Exuberant'), 
(3, 2, 'Hallowed Steam'), 
(4, 3, 'Incandescent'),
(5, 4, 'Temporary Culture');

INSERT INTO cancao(cancao_id, album_id, cancao) VALUES 
(1, 1, 'Soul For Us'),
(2, 1, 'Reflections Of Magic'),
(3, 1, 'Dance With Her Own'),
(4, 2, 'Troubles Of My Inner Fire'),
(5, 2, 'Time Fireworks'),
(6, 3, 'Magic Circus'),
(7, 3, 'Honey, So Do I'),
(8, 3, 'Sweetie, Let''s Go Wild'),
(9, 3, 'She Knows'),
(10, 4, 'Fantasy For Me'),
(11, 4, 'Celebration Of More'),
(12, 4, 'Rock His Everything'),
(13, 4, 'Home Forever'),
(14, 4, 'Diamond Power'),
(15, 4, 'Honey, Let''s Be Silly'),
(16, 5, 'Thang Of Thunder'),
(17, 5, 'Words Of Her Life'),
(18, 5, 'Without My Streets');

INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES
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

INSERT INTO seguidores(usuario_id, artista_id) VALUES
(1,1),
(1,4),
(1,3),
(2,1),
(2,3),
(3,2),
(3,1),
(4,4);

