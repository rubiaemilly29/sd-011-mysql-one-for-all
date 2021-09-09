DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
plano_id INT NOT NULL AUTO_INCREMENT,
plano_tipo VARCHAR(25) NOT NULL,
plano_valor DOUBLE(4, 2) NOT NULL,
PRIMARY KEY(plano_id)
)ENGINE = InnoDB;

INSERT INTO planos(plano_tipo, plano_valor)
VALUES ("gratuito", 0), ("universitario", 5.99), ("familiar", 7.99);

CREATE  TABLE artistas(
artista_id INT NOT NULL AUTO_INCREMENT,
artista VARCHAR(35) NOT NULL,
PRIMARY KEY(artista_id)
)ENGINE = InnoDB;

INSERT INTO artistas(artista)
VALUES ("Walter Phoenix"), ("Peter Strong"), ("Lance Day"), ("Freedie Shannon");

CREATE TABLE albuns(
album_id INT NOT NULL AUTO_INCREMENT,
album VARCHAR(40) NOT NULL,
artista_id INT NOT NULL,
PRIMARY KEY(album_id),
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
)ENGINE = InnoDB;

INSERT INTO albuns(album, artista_id)
VALUES ("Envious", 1), ("Exuberant", 1), ("Hallowed Steam", 2), ("Incandescent", 3), ("Temporary Culture", 4);

CREATE TABLE cancoes(
cancao_id INT NOT NULL AUTO_INCREMENT,
cancao VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY(cancao_id),
FOREIGN KEY(album_id) REFERENCES albuns(album_id)
)ENGINE = InnoDB;

INSERT INTO cancoes(cancao, album_id)
VALUES ("Soul For Us", 1), ("Reflections For Magic", 1), ("Dance With Her Own", 1), ("Troubles Of My Inner Fire", 2),
("Time Fireworks", 2), ("Magic Circus", 3), ("Honey, So Do I", 3), ("Sweetie, Let's Go Wild", 3), ("She Knows", 3),
("Fantasy For Me", 4), ("Celebration Of More", 4), ("Rock Is Everything", 4), ("Home For Ever", 4),
("Diamond Power", 4), ("Honey, Let's Be Silly", 4), ("Thang Of Thunder", 5), ("Words Of Her Life", 5),
("Without My Streets", 5);

CREATE TABLE usuarios(
usuario_id INT NOT NULL AUTO_INCREMENT,
nome_usuario VARCHAR(25) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
PRIMARY KEY(usuario_id),
FOREIGN KEY(plano_id) REFERENCES planos(plano_id)
)ENGINE = InnoDB;

INSERT INTO usuarios(nome_usuario, idade, plano_id)
VALUES ("Thati", 23, 1), ("Cintia", 35, 2), ("Bill", 20, 3), ("Roger", 45, 1);

CREATE TABLE artistas_seguidos(
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY(artista_id) REFERENCES artistas(artista_id)
)ENGINE = InnoDB;

INSERT INTO artistas_seguidos(usuario_id, artista_id)
VALUES (1, 1), (1, 4), (1, 3), (2, 1), (2, 3), (3, 2), (3, 1), (4, 4);

CREATE TABLE historico_musical(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
PRIMARY KEY(usuario_id, cancao_id)
FOREIGN KEY(usuario_id) REFERENCES usuarios(usuario_id),
FOREIGN KEY(cancao_id) REFERENCES cancoes(cancao_id)
)ENGINE = InnoDB;

INSERT INTO historico_musical(usuario_id, cancao_id)
VALUES (1, 1), (1, 3), (1, 4), (1, 5), (2, 4), (2, 5), (2, 1), (2, 4), (3, 2), (3, 5), (3, 3), (4, 1), (4, 5), (4, 4);
