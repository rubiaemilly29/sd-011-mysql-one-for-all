CREATE DATABASE IF NOT EXISTS SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(25) NOT NULL,
valor_plano DOUBLE NOT NULL
) engine = InnoDB;

INSERT INTO planos(plano_id,plano, valor_plano)
VALUES
(DEFAULT, 'gratuito', 0.00),
(DEFAULT, 'familiar', 7.99),
(DEFAULT, 'universitário', 5.99);
	
CREATE TABLE usuarios(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine = InnoDB;

INSERT INTO usuarios VALUES
(DEFAULT,'Thati', '23', 1),
(DEFAULT,'Cintia', '35',2),
(DEFAULT,'Bill', '20', 3),
(DEFAULT,'Roger', '45', 1);

CREATE TABLE artistas(
artista_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL
) engine = InnoDB;

INSERT INTO artistas VALUES
(DEFAULT,'Walter', 'Phoenix'),
(DEFAULT,'Peter', 'Strong'),
(DEFAULT,'Lance', 'Day'),
(DEFAULT,'Freedie', 'Shannon');

CREATE TABLE albuns(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO albuns VALUES
(DEFAULT,'Envious', 1),
(DEFAULT,'Exuberant', 1),
(DEFAULT,'Hallowed Steam', 2),
(DEFAULT,'Incandescent', 3),
(DEFAULT,'Temporary Culture', 4);

CREATE TABLE cancoes(
cancoes_id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine = InnoDB;

INSERT INTO cancoes VALUES
(DEFAULT,'Soul For Us', 1),
(DEFAULT,'Reflections Of Magic', 1),
(DEFAULT,'Dance With Her Own', 1),
(DEFAULT,'Troubles Of My Inner Fire', 2),
(DEFAULT,'Time Fireworks', 2),
(DEFAULT,'Magic Circus', 3),
(DEFAULT,'Honey, So Do I', 3),
(DEFAULT,"Sweetie, Let's Go Wild", 3),
(DEFAULT,'She Knows', 3),
(DEFAULT,'Fantasy For Me', 4),
(DEFAULT,'Celebration Of More', 4),
(DEFAULT,'Rock His Everything"', 4),
(DEFAULT,'Home Forever', 4),
(DEFAULT,'Diamond Power', 4),
(DEFAULT,"Honey, Let's Be Silly", 4),
(DEFAULT,'Thang Of Thunder', 5),
(DEFAULT,'Words Of Her Life', 5),
(DEFAULT,'Without My Streets', 5);

CREATE TABLE seguidores(
usuario_id INT,
artista_id INT,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine = InnoDB;

INSERT INTO seguidores VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

CREATE TABLE historico(
usuario_id INT,
cancoes_id INT,
CONSTRAINT PRIMARY KEY(usuario_id, cancoes_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (cancoes_id) REFERENCES cancoes (cancoes_id)
) engine = InnoDB;

INSERT INTO historico VALUES
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

    