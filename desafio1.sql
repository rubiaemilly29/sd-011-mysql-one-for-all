DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
id_planos INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(15) NOT NULL,
valor DECIMAL(2,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios(
id_usuários INT PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(45) NOT NULL,
idade INT NOT NULL,
id_planos INT NOT NULL,
FOREIGN KEY (id_planos) REFERENCES planos (id_planos)
) ENGINE = InnoDB;

CREATE TABLE artista(
id_artista INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(45) NULL
) ENGINE = InnoDB;

CREATE TABLE albuns(
id_albuns INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(45) NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) ENGINE = InnoDB;

CREATE TABLE cancoes(
id_cancoes INT PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(60) NULL,
id_albuns INT NOT NULL,
FOREIGN KEY (id_albuns) REFERENCES albuns (id_albuns)
) ENGINE = InnoDB;

CREATE TABLE Usuario_segue_artista (
id_usuários INT NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_usuários) REFERENCES usuarios (id_usuários),
FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) ENGINE = InnoDB;
