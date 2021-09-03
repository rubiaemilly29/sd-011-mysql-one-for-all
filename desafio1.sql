DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

-- Estrutura para a tabela `artista`

CREATE TABLE `artista` (
`artista_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`artista` VARCHAR(40) NOT NULL
);

-- Inserindo valores na tabela `artista`

INSERT INTO `artista` (`artista`) VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

-- Estrutura para a tabela `plano`

CREATE TABLE `plano` (
`plano_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`plano` VARCHAR(40) NOT NULL,
`valor` DOUBLE NOT NULL
);

-- Inserindo valores na tabela `plano`

INSERT INTO `plano` (`plano`, `valor`) VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

-- Estrutura para a tabela `album`

CREATE TABLE `album` (
`artista_id` INT,
`album_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`album` VARCHAR(40) NOT NULL,
FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
);

-- Inserindo valores na tabela `album`

INSERT INTO `album`(`album`, `artista_id`) VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

-- Estrutura para a tabela `musica`

CREATE TABLE `musica` (
`album_id` INT,
`musica_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`musica` VARCHAR(40) NOT NULL,
FOREIGN KEY (`album_id`) REFERENCES `album`(`album_id`)
);

-- Inserindo valores na tabela `musica`

INSERT INTO `musica`(`musica`, `album_id`) VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 2),
('Time Fireworks', 2),
('Magic Circus', 3),
('Honey, So Do I', 3),
('Sweetie, Let\'s Go Wild', 3),
('She Knows', 3),
('Fantasy For Me', 4),
('Celebration Of More', 4),
('Rock His Everything', 4),
('Home Forever', 4),
('Diamond Power', 4),
('Honey, Let\'s Be Silly', 4),
('Thang Of Thunder', 5),
('Words Of Her Life', 5),
('Without My Streets', 5);

-- Estrutura para a tabela `usuario`

CREATE TABLE `usuario` (
`plano_id` INT,
`usuario_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
`usuario` VARCHAR(40) NOT NULL,
`idade` INT NOT NULL,
FOREIGN KEY (`plano_id`) REFERENCES `plano`(`plano_id`)
);

-- Inserindo valores na tabela `usuario`

INSERT INTO `usuario`(`usuario`, `idade`, `plano_id`) VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

-- Estrutura para a tabela `usuario_segue_artista`

CREATE TABLE `usuario_segue_artista` (
`usuario_id` INT,
`artista_id` INT,
CONSTRAINT PRIMARY KEY(`usuario_id`, `artista_id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`),
FOREIGN KEY (`artista_id`) REFERENCES `artista`(`artista_id`)
);

-- Inserindo valores na tabela `usuario_segue_artista`

INSERT INTO `usuario_segue_artista`(`usuario_id`, `artista_id`) VALUES
(1, 1), (1, 3), (1, 4), (2, 1), (2, 2), (3, 1), (3, 2), (4, 4);

-- Estrutura para a tabela `historico_de_reproducoes`

CREATE TABLE `historico_de_reproducoes` (
`usuario_id` INT,
`musica_id` INT,
CONSTRAINT PRIMARY KEY(`usuario_id`, `musica_id`),
FOREIGN KEY (`usuario_id`) REFERENCES `usuario`(`usuario_id`),
FOREIGN KEY (`musica_id`) REFERENCES `musica`(`musica_id`)
);

-- Inserindo valores na tabela `historico_de_reproducoes`

INSERT INTO `historico_de_reproducoes`(`usuario_id`, `musica_id`) VALUES
(1, 1), (1, 6), (1, 14), (1, 16), (2, 13), (2, 17), (2, 2), (2, 15), (3, 4), (3, 16), (3, 6), (4, 3), (4, 18), (4, 11);
