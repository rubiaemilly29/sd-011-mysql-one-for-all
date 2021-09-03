DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE IF NOT EXISTS planos(
	plano_id INT NOT NULL AUTO_INCREMENT,
    plano_nome VARCHAR(30),
    plano_valor DECIMAL(5,2),
    PRIMARY KEY (plano_id)
) engine=InnoDB;

INSERT INTO planos(plano_id, plano_nome, plano_valor) VALUES(1,'Gratuito', 0.00 );
INSERT INTO planos(plano_id, plano_nome, plano_valor) VALUES(2,'Familiar', 7.99 );
INSERT INTO planos(plano_id, plano_nome, plano_valor) VALUES(3,'Gratuito', 5.99 );

CREATE TABLE  IF NOT EXISTS usuarios(
	usuario_id INT NOT NULL AUTO_INCREMENT,
    usuario VARCHAR(30),
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    PRIMARY KEY (usuario_id),
    FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) engine=InnoDB;

INSERT INTO usuarios(usuario_id, usuario, idade, plano_id) VALUES(1, 'Thati', 23, 1);
INSERT INTO usuarios(usuario_id, usuario, idade, plano_id) VALUES(2, 'Cintia', 35, 2);
INSERT INTO usuarios(usuario_id, usuario, idade, plano_id) VALUES(3, 'Bill', 20, 3);
INSERT INTO usuarios(usuario_id, usuario, idade, plano_id) VALUES(4, 'Roger', 45, 1);

CREATE TABLE  IF NOT EXISTS artistas(
	artista_id INT NOT NULL AUTO_INCREMENT,
    artista VARCHAR(50),
    PRIMARY KEY (artista_id)
) engine=InnoDB;

INSERT INTO artistas(artista_id, artista) VALUES(1, 'Walter Phoenix');
INSERT INTO artistas(artista_id, artista) VALUES(2, 'Peter Strong');
INSERT INTO artistas(artista_id, artista) VALUES(3, 'Lance Day');
INSERT INTO artistas(artista_id, artista) VALUES(4, 'Freedie Shano');


CREATE TABLE  IF NOT EXISTS albuns(
	album_id INT NOT NULL AUTO_INCREMENT,
    album VARCHAR(100),
    artista_id INT NOT NULL,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) engine=InnoDB;

INSERT INTO albuns(album_id, album, artista_id) VALUES(1,'Envious', 1);
INSERT INTO albuns(album_id, album, artista_id) VALUES(2,'Exuberant', 1);
INSERT INTO albuns(album_id, album, artista_id) VALUES(3,'Hallowed Steam', 2);
INSERT INTO albuns(album_id, album, artista_id) VALUES(4,'Incandescent', 3);
INSERT INTO albuns(album_id, album, artista_id) VALUES(5,'Temporary Culture', 4);

CREATE TABLE IF NOT EXISTS cancoes(
	cancao_id INT NOT NULL AUTO_INCREMENT,
    cancao VARCHAR(100),
    album_id INT NOT NULL,
    PRIMARY KEY(cancao_id),
    FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) engine=InnoDB;

INSERT INTO cancoes(cancao, album_id) VALUES('Soul For Us', 1);
INSERT INTO cancoes(cancao, album_id) VALUES('Reflections Of Magic', 1);
INSERT INTO cancoes(cancao, album_id) VALUES('Dance With Her Own', 1);
INSERT INTO cancoes(cancao, album_id) VALUES('Troubles Of My Inner Fire', 2);
INSERT INTO cancoes(cancao, album_id) VALUES('Time Fireworks', 2);
INSERT INTO cancoes(cancao, album_id) VALUES('Magic Circus', 3);
INSERT INTO cancoes(cancao, album_id) VALUES('Honey, So Do I', 3);
INSERT INTO cancoes(cancao, album_id) VALUES('Sweetie, Lets Go Wild', 3);
INSERT INTO cancoes(cancao, album_id) VALUES('She Knows', 3) ;
INSERT INTO cancoes(cancao, album_id) VALUES('Fantasy For Me', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Celebration Of More', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Rock His Everything', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Home Forever', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Diamond Power', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Honey, Lets Be Silly', 4);
INSERT INTO cancoes(cancao, album_id) VALUES('Thang Of Thunder', 5);
INSERT INTO cancoes(cancao, album_id) VALUES('Words Of Her Life', 5);
INSERT INTO cancoes(cancao, album_id) VALUES('Without My Streets', 5);

CREATE TABLE IF NOT EXISTS historico(
	usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
	FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
) ENGINE=InnoDB;


INSERT INTO historico(usuario_id, cancao_id) VALUES(1, 1);
INSERT INTO historico(usuario_id, cancao_id) VALUES(1, 6);
INSERT INTO historico(usuario_id, cancao_id) VALUES(1, 14);
INSERT INTO historico(usuario_id, cancao_id) VALUES(1, 16);
INSERT INTO historico(usuario_id, cancao_id) VALUES(2, 13);
INSERT INTO historico(usuario_id, cancao_id) VALUES(2, 17);
INSERT INTO historico(usuario_id, cancao_id) VALUES(2, 2);
INSERT INTO historico(usuario_id, cancao_id) VALUES(2, 15);
INSERT INTO historico(usuario_id, cancao_id) VALUES(3, 4);
INSERT INTO historico(usuario_id, cancao_id) VALUES(3, 16);
INSERT INTO historico(usuario_id, cancao_id) VALUES(3, 6);
INSERT INTO historico(usuario_id, cancao_id) VALUES(4, 3);
INSERT INTO historico(usuario_id, cancao_id) VALUES(4, 18);
INSERT INTO historico(usuario_id, cancao_id) VALUES(4, 11);

CREATE TABLE IF NOT EXISTS seguidores(
	usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY(usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY(artista_id) REFERENCES artistas (artista_id)
) ENGINE=InnoDB;

INSERT INTO seguidores(usuario_id, artista_id) VALUES(1, 1);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(1, 4);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(1, 3);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(2, 1);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(2, 3);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(3, 2);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(3, 1);
INSERT INTO seguidores(usuario_id, artista_id) VALUES(4, 4);