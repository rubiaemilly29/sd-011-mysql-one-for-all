CREATE DATABASE IF NOT EXISTS SpotfyClone;
USE SpotfyClone;

CREATE TABLE planos(
plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
plano VARCHAR(50) NOT NULL,
valor_plano DOUBLE
);

CREATE TABLE artistas(
artista_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
artista VARCHAR(100) NOT NULL
);

CREATE TABLE usuarios(
usuario_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
usuario VARCHAR(100) NOT NULL,
idade TINYINT,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
);

CREATE TABLE cancoes(
cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cancao VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
);

CREATE TABLE albuns(
album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
album VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
cancao_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
);

CREATE TABLE historico_reproducoes(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
);

CREATE TABLE seguindo_artistas(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artistas (artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id)
);
