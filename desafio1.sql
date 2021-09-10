CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE usuario(
usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
plano_id INT NOT NULL,
nome_usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
)ENGINE=InnoDB;

CREATE TABLE plano(
plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
plano VARCHAR(20) NOT NULL,
valor_plano DECIMAL(4,2) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE artistas(
artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_artista VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
)ENGINE=InnoDB;

CREATE TABLE album(
album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
artista_id INT NOT NULL,
album VARCHAR(50) NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
)ENGINE=InnoDB;

CREATE TABLE cancoes(
cancao_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
album_id INT NOT NULL,
cancao VARCHAR(100) NOT NULL,
FOREIGN KEY (album_id) REFERENCES album(album_id)
)ENGINE=InnoDB;

CREATE TABLE historico(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
)ENGINE=InnoDB;

INSERT INTO usuario(plano_id, nome_usuario, idade)
VALUES (1, 'Thati', 23), (2, 'Cintia', 35), (3, 'Bill', 20), (1, 'Roger', 45);

INSERT INTO plano(plano, valor_plano)
VALUES ('gratuito', 0), ('familiar', 7.99), ('universitario', 5.99);

INSERT INTO artistas(nome_artista)
VALUES ('Walter Phoenix'), ('Lance Day'), ('Peter Strong'), ('Freedie Shannon');

INSERT INTO seguindo_artistas(usuario_id, artista_id)
VALUES (1, 1), (1, 4), (1, 2), (2, 1), (2, 2), (3, 3), (3, 1), (4, 3);

INSERT INTO album(artista_id, album)
VALUES (1, 'Envious'), (1, 'Exuberant'), (3, 'Hallowed Steam'), (2, 'Incandescent'), (4, 'Temporary Culture');

INSERT INTO cancoes(album_id, cancao)
VALUES (1, 'Soul For Us'), (1, 'Reflections Of Magic'), (1, 'Dance With Her Own'), (2, 'Troubles Of My Inner Fire'),
(2, "Time Fireworks"), (3, "Magic Circus"), (3, "Honey, So Do I"), (3, "Sweetie, Let's Go Wild"), (3, "She Knows"),
(4, "Fantasy For Me"), (4, "Celebration Of More"), (4, "Rock Is Everything"), (4, "Home Forever"),
(4, "Diamond Power"), (4, "Honey, Let's Be Silly"), (5, "Thang Of Thunder"), (5, "Words Of Her Life"),
(5, "Without My Streets");

INSERT INTO historico(usuario_id, cancao_id)
VALUES (1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);
