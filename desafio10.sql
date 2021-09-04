USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (nome_do_user VARCHAR(45))
RETURNS INT READS SQL DATA
BEGIN
  DECLARE user_querie INT;
  SELECT COUNT(hist.cancao_id)
  FROM usuarios AS u
  INNER JOIN historico_de_reproducoes AS hist
  ON u.user_id = hist.user_id
  HAVING u.user_nome = nome_do_user
  INTO user_querie;
  RETURN user_querie;
END $
DELIMITER ;
