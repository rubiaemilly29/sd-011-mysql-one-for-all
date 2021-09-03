DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE  SpotifyClone;
USE SpotifyClone;

CREATE TABLE plano(
id INT PRIMARY KEY AUTO_INCREMENT,
tipo_plano VARCHAR(50) NOT NULL,
valor_plano DECIMAL(5,2) NOT NULL
)ENGINE=InnoDB;

INSERT INTO plano(tipo_plano, valor_plano) VALUES('gratuito', 0);
INSERT INTO plano(tipo_plano, valor_plano) VALUES('familiar', 7.99);
INSERT INTO plano(tipo_plano, valor_plano) VALUES('universitário', 5.99);

CREATE TABLE usuario(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
idade TINYINT,
plano_id INTEGER,
CONSTRAINT FOREIGN KEY(plano_id) REFERENCES plano (id)
)ENGINE=InnoDB;

INSERT INTO usuario(nome, idade, plano_id) VALUES('Thati', 23, 1);
INSERT INTO usuario(nome, idade, plano_id) VALUES('Cintia', 35, 2);
INSERT INTO usuario(nome, idade, plano_id) VALUES('Bill', 20, 3);
INSERT INTO usuario(nome, idade, plano_id) VALUES('Roger', 45, 1);
    
CREATE TABLE artista(
id INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

INSERT INTO artista(artista) VALUES('Walter Phoenix');
INSERT INTO artista(artista) VALUES('Peter Strong');
INSERT INTO artista(artista) VALUES('Lance Day');
INSERT INTO artista(artista) VALUES('Freedie Shannon');
    
CREATE TABLE album(
id INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(50) NOT NULL,                                                       
artista_id INTEGER NOT NULL,
CONSTRAINT FOREIGN KEY(artista_id) REFERENCES artista(id)
) ENGINE=InnoDB;

INSERT INTO album(album, artista_id) VALUES('Envious', 1);
INSERT INTO album(album, artista_id) VALUES('Exuberant', 1);
INSERT INTO album(album, artista_id) VALUES('Hallowed Steam', 2);
INSERT INTO album(album, artista_id) VALUES('Incandescent', 3);
INSERT INTO album(album, artista_id) VALUES('Temporary Culture', 4);

CREATE TABLE cancoes(
id INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(50) NOT NULL,
album_id INTEGER NOT NULL,
CONSTRAINT FOREIGN KEY(album_id) REFERENCES album(id)
)ENGINE=InnoDB;

INSERT INTO cancoes(cancao, album_id) VALUES('Soul For Us', 1);
INSERT INTO cancoes(cancao, album_id) VALUES('Reflections Of Magic', 1);
INSERT INTO cancoes(cancao, album_id) VALUES('Dance With Her Own', 1);
INSERT INTO cancoes(cancao, album_id) VALUES('Troubles Of My Inner Fire', 2);
INSERT INTO cancoes(cancao, album_id) VALUES('Time Fireworks', 2);
INSERT INTO cancoes(cancao, album_id) VALUES('Magic Circus', 3);
INSERT INTO cancoes(cancao, album_id) VALUES('Honey, So Do I', 3);
INSERT INTO cancoes(cancao, album_id) VALUES("Sweetie, Let's Go Wild", 3);
INSERT INTO cancoes(cancao, album_id) VALUES('She Knows', 3);
INSERT INTO cancoes(cancao, album_id) VALUES('Fantasy For Me', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Celebration Of More', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Rock His Everything', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Home Forever', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Diamond Power', 4);
INSERT INTO cancoes(cancao, album_id) VALUES("Honey, Let's Be Silly", 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Thang Of Thunder', 5);
INSERT INTO cancoes(cancao, album_id) VALUES('Words Of Her Life', 5);
INSERT INTO cancoes(cancao, album_id) VALUES('Without My Streets', 5);

CREATE TABLE seguindo_artistas(
usuario_id INTEGER,
artista_id INTEGER,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (id),
FOREIGN KEY (artista_id) REFERENCES artista (id)
)ENGINE=InnoDB;

INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(1, 1);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(1, 4);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(1, 3);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(2, 1);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(2, 3);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(3, 2);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(3, 1);
INSERT INTO seguindo_artistas(usuario_id, artista_id) VALUES(4, 4);

CREATE TABLE historico_de_reproducoes(
usuario_id INTEGER,
cancao_id INTEGER,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario (id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (id)
)ENGINE=InnoDB;

INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(1, 1);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(1, 6);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(1, 14);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(1, 16);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(2, 13);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(2, 17);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(2, 2);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(2, 15);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(3, 4);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(3, 16);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(3, 6);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(4, 3);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(4, 18);
INSERT INTO historico_de_reproducoes(usuario_id, cancao_id) VALUES(4, 11);
