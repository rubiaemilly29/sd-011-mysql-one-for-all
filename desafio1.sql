DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
plano_id INT AUTO_INCREMENT PRIMARY KEY,
plano_nome VARCHAR(100) NOT NULL,
plano_valor DECIMAL(5,2) NOT NULL    
) engine = InnoDB;

CREATE TABLE artistas(
artista_id INT AUTO_INCREMENT PRIMARY KEY,
artista_nome VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE albuns(
album_id INT AUTO_INCREMENT PRIMARY KEY,
album_nome VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE cancoes(
cancao_id INT AUTO_INCREMENT PRIMARY KEY,
cancao_nome VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE albuns_cancoes(
album_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (album_id, cancao_id),
FOREIGN KEY (album_id) REFERENCES albuns(album_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) engine = InnoDB;

CREATE TABLE users(
usuario_id INT AUTO_INCREMENT PRIMARY KEY,
usuario_nome VARCHAR(100) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE seguindo_artistas (
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES users(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artistas(artista_id)
) engine = InnoDB;

CREATE TABLE historico_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY (usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES users(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes(cancao_id)
) engine = InnoDB;

INSERT INTO planos(plano_nome, plano_valor)
VALUES
('gratuito', '0'),
('familiar', '7.99'),
('universitário', '5.99');

INSERT INTO artistas(artista_nome)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albuns(album_nome, artista_id)
VALUES
('Envious', '1'),
('Exuberant', '1'),
('Hallowed Steam', '2'),
('Incandescent', '3'),
('Temporary Culture', '4');

INSERT INTO cancoes(cancao_nome)
VALUES
('Soul For Us', '1'),
('Reflections Of Magic', '1'),
('Dance With Her Own', '1'),
('Troubles Of My Inner Fire', '2'),
('Time Fireworks', '2'),
('Magic Circus', '3'),
('Honey, So Do I', '3'),
('Sweetie, Let’s Go Wild', '3'),
('She Knows', '3'),
('Fantasy For Me', '4'),
('Celebration Of More', '4'),
('Rock His Everything', '4'),
('Home Forever', '4'),
('Diamond Power', '4'),
('Honey, Let’s Be Silly', '4'),
('Thang Of Thunder', '5'),
('Words Of Her Life', '5'),
('Without My Streets', '5');

INSERT INTO albuns_cancoes(album_id, cancao_id)
VALUES
('1', '1'),
('1', '2'),
('1', '3'),
('2','4'),
('2', '5'),
('3', '6'),
('3', '7'),
('3', '8'),
('3', '9'),
('4', '10'),
('4', '11'),
('4', '12'),
('4', '13'),
('4', '14'),
('4', '15'),
('5', '16'),
('5', '17'),
('5', '18');

INSERT INTO users(usuario_nome, idade, plano_id)
VALUES
('Thati', '23', '1'),
('Cintia', '35', '2'),
('Bill', '20', '3'),
('Roger', '45', '1');

INSERT INTO seguindo_artistas(usuario_id, artista_id)
VALUES
('1', '1'),
('1', '4'),
('1', '3'),
('2', '1'),
('2', '3'),
('3', '2'),
('3', '1'),
('4', '4');

INSERT INTO historico_reproducoes(usuario_id, cancao_id)
VALUES
('1', '1'),
('1', '6'),
('1', '14'),
('1', '16'),
('2', '13'),
('2', '17'),
('2', '2'),
('2', '15'),
('3', '4'),
('3', '16'),
('3', '6'),
('4', '3'),
('4', '18'),
('4', '11');
