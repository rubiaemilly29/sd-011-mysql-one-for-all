DROP SCHEMA IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos (
  plano_id INT PRIMARY KEY,
  nome VARCHAR(50),
  valor DOUBLE
) ENGINE=InnoDb;

CREATE TABLE usuarios (
  user_id INT PRIMARY KEY,
  nome VARCHAR(50),
  idade INT UNSIGNED NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES planos (plano_id)
) ENGINE=InnoDb;

CREATE TABLE artistas (
  artista_id INT PRIMARY KEY,
  nome VARCHAR(50)
) ENGINE=InnoDb;

CREATE TABLE albuns (
  album_id INT PRIMARY KEY,
  nome VARCHAR(50),
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) ENGINE=InnoDb;

CREATE TABLE cancoes (
  cancao_id INT PRIMARY KEY,
  nome VARCHAR(50),
  album_id INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albuns (album_id)
) ENGINE=InnoDb;

CREATE TABLE seguindo_artistas (
  user_id INT NOT NULL,
  artista_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, artista_id),
  FOREIGN KEY (user_id) REFERENCES usuarios (user_id),
  FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
) ENGINE=InnoDb;

CREATE TABLE historico_de_reproducoes (
  user_id INT NOT NULL,
  cancao_id INT NOT NULL,
  CONSTRAINT PRIMARY KEY (user_id, cancao_id),
  FOREIGN KEY (user_id) REFERENCES usuarios (user_id),
  FOREIGN KEY (cancao_id) REFERENCES cancoes (cancao_id)
) ENGINE=InnoDb;
