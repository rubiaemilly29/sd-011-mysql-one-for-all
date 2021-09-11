CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;
CREATE TABLE IF NOT EXISTS plano (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10 , 2 ) NOT NULL
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS usuário (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES plano (plano_id)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS canções (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id),
    FOREIGN KEY (album_id)
        REFERENCES album (album_id)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS seguindo_artistas (
    artista_id INT NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuário (usuario_id)
)  ENGINE=INNODB;
CREATE TABLE IF NOT EXISTS historico (
    cancao_id INT NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (cancao_id)
        REFERENCES canções (cancao_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuário (usuario_id)
)  ENGINE=INNODB;
INSERT INTO plano(nome, valor)
VALUES('gratuito', 0), ('familiar', 7.99), ('universitário', 5.99);
INSERT INTO usuário(nome, idade, plano_id)
VALUES('Thati', 23, 1), ('Cintia', 35, 2), ('Bill', 20, 3), ('Roger', 45, 1);
INSERT INTO artista(nome)
VALUES ('Walter Phoenix'), ('Freedie Shannon'), ('Lance Day'),('Peter Strong');
INSERT INTO album(nome, artista_id)
VALUES ('Envious', 1), ('Exuberant', 1), ('Hallowed Steam', 4), ('Incandescent', 3), ('Temporary Culture', 2);
INSERT INTO canções(nome, artista_id, album_id)
VALUES('Soul For Us', 1, 1), 
('Reflections Of Magic', 1, 1), 
('Dance With Her Own', 1, 1),
('Troubles Of My Inner Fire', 1, 2),
('Time Fireworks', 1, 2),
('Magic Circus', 4, 3),
('Honey, So Do I', 4, 3),
("Sweetie, Let's Go Wild", 4, 3),
('She Knows', 4, 3),
('Fantasy For Me', 3, 4),
('Celebration Of More', 3, 4),
('Rock His Everything', 3, 4),
('Home Forever', 3, 4),
('Diamond Power', 3, 4),
("Honey, Let's Be Silly", 3, 4),
('Thang Of Thunder', 2, 5),
('Words Of Her Life', 2, 5),
('Without My Streets', 2, 5);
INSERT INTO seguindo_artistas(artista_id, usuario_id)
VALUES(1, 1), (2, 1), (3, 1), (1, 2), (3, 2), (4, 3), (1, 2), (2, 4);
INSERT INTO historico(cancao_id, usuario_id)
VALUES(1, 1), 
(6, 1), 
(14, 1), 
(16, 1), 
(13, 2), 
(17, 2), 
(2, 2), 
(15, 2), 
(4, 3), 
(16, 3), 
(6, 3), 
(3, 4), 
(18, 4), 
(11, 4);
