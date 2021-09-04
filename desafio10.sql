USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (id INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE numero_de_musicas INT;
  SELECT COUNT(cancao_id)
  FROM historico_de_reproducoes
  WHERE user_id = id
  INTO numero_de_musicas;
  RETURN numero_de_musicas;
END $$
DELIMITER ;
