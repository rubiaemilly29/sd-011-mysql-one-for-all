DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;
CREATE TABLE artistas(
    id INT NOT NULL AUTO_INCREMENT,
    nome_artista VARCHAR(200) NOT NULL,
    PRIMARY KEY(id),
) engine = InnoDB;

CREATE TABLE planos(
    id INT NOT NULL AUTO_INCREMENT,
    nome_plano VARCHAR(200) NOT NULL,
    valor DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (id)
) engine = InnoDB;

CREATE TABLE usuarios(
    id INT NOT NULL AUTO_INCREMENT,
    nome_usuario VARCHAR(200) NOT NULL,
    idade INT NOT NULL,
    id_plano INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_plano) REFERENCES planos(id)
) engine = InnoDB;

CREATE TABLE albuns(
    id INT NOT NULL AUTO_INCREMENT,
    nome_album VARCHAR(200) NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_artista) REFERENCES artistas(id)
) engine = InnoDB;

CREATE TABLE cancoes(
    id INT NOT NULL AUTO_INCREMENT,
    nome_cancao VARCHAR(200) NOT NULL,
    id_album INT NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_artista) REFERENCES artistas(id),
    FOREIGN KEY (id_album) REFERENCES albuns(id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes(
    id_usuario INT NOT NULL,
    id_cancao INT NOT NULL,
    PRIMARY KEY(id_usuario, id_cancao),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_cancao) REFERENCES cancoes(id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    id_usuario INT NOT NULL,
    id_artista INT NOT NULL,
    PRIMARY KEY (id_usuario, id_artista),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_artista) REFERENCES artistas(id)
) engine = InnoDB;
INSERT INTO artistas (nome_artista)
VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon');
    
INSERT INTO planos (nome_plano, valor)
VALUES
    ('gratuito', 0),
    ('universitário', 5.99),
    ('familiar', 7.99);
    
INSERT INTO usuarios (id_plano, nome_usuario, idade)
VALUES
    ('Thati', 23, 1 ) ,
    ('Cintia', 35, 3),
    ('Bill', 20, 2 ),
    ('Roger', 45, 1 );

INSERT INTO albuns (nome_album, id_artista)
VALUES
    ('Envious', 1),
    ('Exuberant', 1),
    ('Hallowed Steam', 2),
    ('Incandescent', 3),
    ('Temporary Culture', 4);

INSERT INTO cancoes (nome_cancao, id_artista, id_album)
VALUES
    ('Soul For Us', 1, 1),
    ('Reflections Of Magic', 1, 1),
    ('Dance With Her Own', 1, 1),
    ('Troubles Of My Inner Fire', 1, 2),
    ('Time Fireworks', 1, 2),
    ('Magic Circus', 2, 3),
    ('Honey, So Do I', 2, 3),
    ("Sweetie, Let's Go Wild", 2, 3),
    ('She Knows', 2, 3),
    ('Fantasy For Me', 3, 4),
    ('Celebration Of More', 3, 4),
    ('Rock His Everything', 3, 4),
    ('Home Forever', 3, 4),
    ('Diamond Power', 3, 4),
    ("Honey, Let's Be Silly", 3, 4),
    ('Thang Of Thunder', 4, 5),
    ('Words Of Her Life', 4, 5),
    ('Without My Streets', 4, 5);

INSERT INTO historico_reproducoes (id_usuario, id_cancao)
VALUES
    (1, 1),
    (1, 6),
    (1, 14),
    (1, 16),
    (2, 13),
    (2, 17),
    (2, 15),
    (2, 2),
    (3, 4),
    (3, 16),
    (3, 6),
    (4, 3),
    (4, 11),
    (4, 18);

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
