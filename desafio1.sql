DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE planos(
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  nome_plano VARCHAR(100) NOT NULL,
  valor_plano DOUBLE NOT NULL
) engine = InnoDB;

INSERT INTO planos (nome_plano, valor_plano)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);
