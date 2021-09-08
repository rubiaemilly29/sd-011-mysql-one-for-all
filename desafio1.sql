DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;


CREATE TABLE plano(
    id_plano INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(15) NOT NULL,
    valor DECIMAL(3, 2) NOT NULL
) engine = InnoDB;

CREATE TABLE usuarios(
    id_usuario INT  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_usuario VARCHAR(10) NOT NULL,
    idade INT NOT NULL,
    id_plano INT,    
    FOREIGN KEY (id_plano) REFERENCES plano (id_plano)
) engine = InnoDB;

CREATE TABLE artistas(
    id_artista INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE album(
    id_album INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_album VARCHAR(50) NOT NULL,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES artistas (id_artista)
) engine = InnoDB;

CREATE TABLE cancao(
    id_cancao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_cancao VARCHAR(50) NOT NULL,
    id_album INT,
    FOREIGN KEY (id_album) REFERENCES album (id_album)
) engine = InnoDB;

CREATE TABLE historico_de_reproducoes(
    id_cancao INT,
    id_usuario INT,
    CONSTRAINT PRIMARY KEY(id_usuario, id_cancao),
    FOREIGN KEY (id_cancao) REFERENCES cancao (id_cancao),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
 
) engine = InnoDB;

CREATE TABLE seguindo_artistas(
    id_artista INT,
    id_usuario INT,
    CONSTRAINT PRIMARY KEY(id_artista, id_usuario),
    FOREIGN KEY (id_artista) REFERENCES artistas (id_artista),
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario)
) engine = InnoDB;
