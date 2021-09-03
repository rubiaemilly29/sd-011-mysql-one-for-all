CREATE SCHEMA IF NOT EXISTS `SpotifyClone`;
USE `SpotifyClone`;
-- -----------------------------------------------------
-- Table `SpotifyClone`.`plan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SpotifyClone`.`plan` (
  `plan_id` INT NOT NULL AUTO_INCREMENT,
  `plan_name` VARCHAR(45) NOT NULL,
  `plan_price` DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE = InnoDB;
INSERT INTO
  `plan` (`plan_id`, `plan_name`, `plan_price`)
VALUES
  (1, 'gratuito', '0.00'),
  (2, 'familiar', '7.99'),
  (3, 'universitário', '5.99');
-- -----------------------------------------------------
  -- Table `SpotifyClone`.`users`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `SpotifyClone`.`users` (
    `user_id` INT NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(45) NOT NULL,
    `user_age` INT NOT NULL,
    `plan_id` INT NOT NULL,
    PRIMARY KEY (`user_id`),
    CONSTRAINT `fk_users_plan` FOREIGN KEY (`plan_id`) REFERENCES `SpotifyClone`.`plan` (`plan_id`)
  ) ENGINE = InnoDB;
INSERT INTO
  `users` (`user_id`, `user_name`, `user_age`, `plan_id`)
VALUES
  (1, 'Thati', 23, 1),
  (2, 'Cintia', 35, 2),
  (3, 'Bill', 20, 3),
  (4, 'Roger', 45, 1);
-- -----------------------------------------------------
  -- Table `SpotifyClone`.`artists`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `SpotifyClone`.`artists` (
    `artist_id` INT NOT NULL AUTO_INCREMENT,
    `artist_name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`artist_id`)
  ) ENGINE = InnoDB;
INSERT INTO
  `artists` (`artist_id`, `artist_name`)
VALUES
  (1, 'Walter Phoenix'),
  (2, 'Peter Strong'),
  (3, 'Lance Day'),
  (4, 'Freedie Shannon');
-- -----------------------------------------------------
  -- Table `SpotifyClone`.`albums`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `SpotifyClone`.`albums` (
    `album_id` INT NOT NULL AUTO_INCREMENT,
    `album_name` VARCHAR(45) NOT NULL,
    `artist_id` INT NOT NULL,
    PRIMARY KEY (`album_id`),
    CONSTRAINT `fk_albums_artists` FOREIGN KEY (`artist_id`) REFERENCES `SpotifyClone`.`artists` (`artist_id`)
  ) ENGINE = InnoDB;
INSERT INTO
  `albums` (`album_id`, `album_name`, `artist_id`)
VALUES
  (1, 'Envious', 1),
  (2, 'Exuberant', 1),
  (3, 'Hallowed Steam', 2),
  (4, 'Incandescent', 3),
  (5, 'Temporary Culture', 4);
-- -----------------------------------------------------
  -- Table `SpotifyClone`.`songs`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `SpotifyClone`.`songs` (
    `song_id` INT NOT NULL AUTO_INCREMENT,
    `song_name` VARCHAR(45) NOT NULL,
    `album_id` INT NOT NULL,
    PRIMARY KEY (`song_id`),
    CONSTRAINT `fk_songs_albums` FOREIGN KEY (`album_id`) REFERENCES `SpotifyClone`.`albums` (`album_id`)
  ) ENGINE = InnoDB;
INSERT INTO
  `songs` (`song_id`, `song_name`, `album_id`)
VALUES
  (1, 'Soul For Us', 1),
  (2, 'Reflections Of Magic', 1),
  (3, 'Dance With Her Own', 1),
  (4, 'Troubles Of My Inner Fire', 2),
  (5, 'Time Fireworks', 2),
  (6, 'Magic Circus', 3),
  (7, 'Honey, So Do I', 3),
  (8, 'Sweetie, Let\'s Go Wild', 3),
  (9, 'She Knows', 3),
  (10, 'Fantasy For Me', 4),
  (11, 'Celebration Of More', 4),
  (12, 'Rock His Everything', 4),
  (13, 'Home Forever', 4),
  (14, 'Diamond Power', 4),
  (15, 'Honey, Let\'s Be Silly', 4),
  (16, 'Thang Of Thunder', 5),
  (17, 'Words Of Her Life', 5),
  (18, 'Without My Streets', 5);
-- -----------------------------------------------------
  -- Table `SpotifyClone`.`reproduction_history`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `SpotifyClone`.`reproduction_history` (
    `user_id` INT NOT NULL,
    `song_id` INT NOT NULL,
    PRIMARY KEY (`user_id`, `song_id`),
    CONSTRAINT `fk_reproduction_history_users` FOREIGN KEY (`user_id`) REFERENCES `SpotifyClone`.`users` (`user_id`),
    CONSTRAINT `fk_reproduction_history_songs` FOREIGN KEY (`song_id`) REFERENCES `SpotifyClone`.`songs` (`song_id`)
  ) ENGINE = InnoDB;
INSERT INTO
  `reproduction_history` (`user_id`, `song_id`)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 2),
  (2, 13),
  (2, 15),
  (2, 17),
  (3, 4),
  (3, 6),
  (3, 16),
  (4, 3),
  (4, 11),
  (4, 18);
-- -----------------------------------------------------
  -- Table `SpotifyClone`.`followup`
  -- -----------------------------------------------------
  CREATE TABLE IF NOT EXISTS `SpotifyClone`.`followup` (
    `user_id` INT NOT NULL,
    `artist_id` INT NOT NULL,
    PRIMARY KEY (`user_id`, `artist_id`),
    CONSTRAINT `fk_followup_users` FOREIGN KEY (`user_id`) REFERENCES `SpotifyClone`.`users` (`user_id`),
    CONSTRAINT `fk_followup_artists` FOREIGN KEY (`artist_id`) REFERENCES `SpotifyClone`.`artists` (`artist_id`)
  ) ENGINE = InnoDB;
INSERT INTO
  `followup` (`user_id`, `artist_id`)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (2, 1),
  (2, 3),
  (3, 1),
  (3, 2),
  (4, 4);
