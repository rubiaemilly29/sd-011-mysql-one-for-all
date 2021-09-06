DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano(
      id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      nome VARCHAR(50) NOT NULL,
      valor DECIMAL(5,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Usuario(
      id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      id_plano INT NOT NULL,
      nome VARCHAR(50) NOT NULL,
      idade INT NOT NULL,
      FOREIGN KEY(id_plano) REFERENCES Plano(id)
) engine = InnoDB;

CREATE TABLE Artista(
      id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      nome VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE Album(
      id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      id_artista INT NOT NULL,
      nome VARCHAR(50) NOT NULL,
      FOREIGN KEY(id_artista) REFERENCES Artista(id)
) engine = InnoDB;

CREATE TABLE Cancao(
      id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
      id_album INT NOT NULL,
      nome VARCHAR(50) NOT NULL,
      FOREIGN KEY(id_album) REFERENCES Album(id)
) engine = InnoDB;

CREATE TABLE Reproducao(
      id_usuario INT NOT NULL,
      id_cancao INT NOT NULL,
      FOREIGN KEY(id_usuario) REFERENCES Usuario(id),
      FOREIGN KEY(id_cancao) REFERENCES Cancao(id)
) engine = InnoDB;

CREATE TABLE Seguidores(
      id_usuario INT NOT NULL,
      id_artista INT NOT NULL,
      FOREIGN KEY(id_usuario) REFERENCES Usuario(id),
      FOREIGN KEY(id_artista) REFERENCES Artista(id)
) engine = InnoDB;

INSERT INTO Plano (nome, valor) VALUES
      ('gratuito', 0),
      ('familiar', 7.99),
      ('universitário', 5.99);

INSERT INTO Usuario (id_plano, nome, idade) VALUES
      (1, 'Thati', 23),
      (2, 'Cintia',35),
      (3, 'Bill',20),
      (1, 'Roger', 45);
  
  INSERT INTO Artista (nome) VALUES
      ('Walter Phoenix'),
      ('Peter Strong'),
      ('Lance Day'),
      ('Freedie Shannon');

  INSERT INTO Album (id_artista, nome) VALUES
      (1, 'Envious'),
      (1, 'Exuberant'),
      (2, 'Hallowed Steam'),
      (2, 'Incandescent'),
      (3, 'Temporary Culture');

  INSERT INTO Cancao (id_album, nome) VALUES
      (1, 'Soul For Us'),
      (1, 'Reflections Of Magic'),
      (1, 'Dance With Her Own'),
      (2, 'Troubles Of My Inner Fire'),
      (2, 'Time Fireworks'),
      (3, 'Magic Circus'),
      (3, 'Honey, So Do I'),
      (3, 'Sweetie, Let''s Go Wild'),
      (3, 'She Knows'),
      (4, 'Fantasy For Me'),
      (4, 'Celebration Of More'),
      (4, 'Rock His Everything'),
      (4, 'Home Forever'),
      (4, 'Diamond Power'),
      (4, 'Honey, Let''s Be Silly'),
      (5, 'Thang Of Thunder'),
      (5, 'Words Of Her Life'),
      (5, 'Without My Streets');

  INSERT INTO Reproducao (id_usuario, id_cancao) VALUES
      (1,1),
      (1,6),
      (1,14),
      (1,16),
      (2,13),
      (2,17),
      (2,2),
      (2,15),
      (3,4),
      (3,16),
      (3,6),
      (4,3),
      (4,18),
      (4,11);
  
    INSERT INTO Seguidores (id_usuario, id_artista) VALUES
      (1,1),
      (1,4),
      (1,3),
      (2,1),
      (2,3),
      (3,2),
      (3,1),
      (4,4);
