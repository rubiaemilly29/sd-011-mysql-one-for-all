DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuarios(
    id INT NOT NULL AUTO_INCREMENT,
    nome_usuario VARCHAR(200) NOT NULL,
    id_plano INT NOT NULL,
    idade INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY planos_f (id_plano) REFERENCES planos(id)
) engine = InnoDB;

CREATE TABLE planos(
    id INT NOT NULL AUTO_INCREMENT,
    nome_plano VARCHAR(200) NOT NULL,
    valor FLOAT(5, 2) NOT NULL,
    PRIMARY KEY(id)
) engine = InnoDB;

CREATE TABLE artistas(
    id INT NOT NULL AUTO_INCREMENT,
    nome_artista VARCHAR(200) NOT NULL,
    id_album INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY album_f (id_album) REFERENCES albuns(id)
) engine = InnoDB;

CREATE TABLE albuns(
    id INT NOT NULL AUTO_INCREMENT,
    nome_album VARCHAR(200) NOT NULL,
    PRIMARY KEY(id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes(
    id INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_cancao INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY usuario_f (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY cancao_f (id_cancao) REFERENCES cancoes(id)
) engine = InnoDB;

CREATE TABLE cancoes(
    id INT NOT NULL AUTO_INCREMENT,
    nome_cancao VARCHAR(200) NOT NULL,
    id_album INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY album_f (id_album) REFERENCES albuns(id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    id INT NOT NULL AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY usuario_f (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY artista_f (id_artista) REFERENCES artistas(id)
) engine = InnoDB;
INSERT INTO usuarios (id_plano,nome_usuario, idade)
VALUES
    (1,'Thati', 23 ) ,
    (2,'Cintia', 35),
    (3,'Bill', 20 ),
    (1,'Roger', 45 );

INSERT INTO planos (nome_plano, valor)
VALUES
    ('gratuito', 0.00),
    ('familiar', 7.99),
    ('universitário', 5.99);
  
  INSERT INTO albuns (nome_album)
VALUES
    ('Envious'),
    ('Exuberant'),
    ('Hallowed Steam'),
    ('Incandescent'),
    ('Temporary Culture');
  
  INSERT INTO artistas (nome_artista, id_album)
VALUES
    ('Walter Phoenix',1),
    ('Walter Phoenix',2),
    ('Peter Strong',3),
    ('Lance Day',4),
    ('Freedie Shannon',5);
  
  INSERT INTO cancoes (nome_cancao)
VALUES
    ('Soul For Us'),
    ('Reflections Of Magic'),
    ('Dance With Her Own'),
    ('Troubles Of My Inner Fire'),
    ('Time Fireworks'),
    ('Magic Circus'),
    ('Honey, So Do I'),
    ('Sweetie, Let\'s Go Wild'),
    ('She Knows'),
    ('Fantasy For Me'),
    ('Celebration Of More'),
    ('Rock His Everything'),
    ('Home Forever'),
    ('Diamond Power'),
    ('Honey, Let\'s Be Silly'),
    ('Thang Of Thunder'),
    ('Words Of Her Life'),
    ('Without My Streets');
  
  INSERT INTO historico_reproducoes (id_usuario, id_cancao)
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
  
  INSERT INTO seguindo_artistas (id_usuario, id_artista)
VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4);
