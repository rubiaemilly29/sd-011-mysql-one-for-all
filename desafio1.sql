DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE usuario (
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL
) ENGINE = InnoDB;

CREATE TABLE historico_producoes (
	historico_id INT PRIMARY KEY AUTO_INCREMENT,
    historico VARCHAR(100) NOT NULL,
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id) 
) ENGINE = InnoDB;

CREATE TABLE artista (
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE album (
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(100) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) ENGINE = InnoDB;


CREATE TABLE cancoes (
	cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(100) NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) ENGINE = InnoDB;

CREATE TABLE seguindo_artistas (
	usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artista (artista_id)
) ENGINE = InnoDB;

CREATE TABLE plano (
	plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(100) NOT NULL,
    valor_plano DECIMAL(5,2) NOT NULL
) ENGINE = InnoDB;
