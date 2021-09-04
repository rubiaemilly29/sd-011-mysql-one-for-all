USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (nome_do_user VARCHAR(45))
READS SQL DATA
BEGIN
  SELECT COUNT(hist.cancao_id) AS `quantidade_musicas_no_historico`
  FROM usuarios AS u
  INNER JOIN historico_de_reproducoes AS hist
  ON u.user_id = hist.user_id
  WHERE user_nome = nome_do_user;
END $
DELIMITER ;
