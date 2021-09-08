DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos (
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(20),
valor INT
) engine = InnoDB;

CREATE TABLE usuario (
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(50),
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos(plano_id)
) engine = InnoDB;

CREATE TABLE artista (
artista_id INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(50)
) engine = InnoDB;

CREATE TABLE album (
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50),
artista_id int not null,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;

CREATE TABLE musica (
musica_id INT PRIMARY KEY AUTO_INCREMENT,
nome_musica VARCHAR(50),
artista_id int not null,
album_id int not null,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;

CREATE TABLE seguindo (
artista_id INT,
usuario_id INT,
CONSTRAINT PRIMARY KEY (artista_id, usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;

CREATE TABLE historico (
usuario_id INT,
musica_id INT,
CONSTRAINT PRIMARY KEY (artista_id, usuario_id),
FOREIGN KEY (musica_id) REFERENCES musica(musica_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
) engine = InnoDB;
