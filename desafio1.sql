DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE artista(
id_artista INT PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(45) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE planos(
id_planos INT PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(15) NOT NULL,
valor DECIMAL(2,2) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE usuarios(
id_usuarios INT PRIMARY KEY AUTO_INCREMENT,
usuarios VARCHAR(45) NOT NULL,
idade INT NOT NULL,
id_planos INT NOT NULL,
FOREIGN KEY (id_planos) REFERENCES planos (id_planos)
) ENGINE = InnoDB;

CREATE TABLE albuns(
id_albuns INT PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(45) NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_artista) REFERENCES artista (id_artista)
) ENGINE = InnoDB;

CREATE TABLE cancoes(
id_cancoes INT PRIMARY KEY AUTO_INCREMENT,
cancoes VARCHAR(60)  NOT NULL,
id_albuns INT NOT NULL,
FOREIGN KEY (id_albuns) REFERENCES albuns (id_albuns)
) ENGINE = InnoDB;

CREATE TABLE usuarios_cancoes(
id_usuarios INT NOT NULL,
id_cancoes INT NOT NULL,
FOREIGN KEY (id_usuarios) REFERENCES usuarios (id_usuarios),
FOREIGN KEY (id_cancoes) REFERENCES cancoes (id_cancoes),
CONSTRAINT PRIMARY KEY (id_usuarios, id_cancoes)
) ENGINE = InnoDB;

CREATE TABLE usuario_segue_artista (
id_usuarios INT NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY (id_usuarios) REFERENCES usuarios (id_usuarios),
FOREIGN KEY (id_artista) REFERENCES artista (id_artista),
CONSTRAINT PRIMARY KEY (id_usuarios, id_artista)
) ENGINE = InnoDB;
