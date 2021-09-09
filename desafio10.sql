DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancao_total INT;
SELECT 
COUNT(his.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_reproducoes AS his
INNER JOIN SpotifyClone.users AS u
ON u.usuario_id = his.usuario_id
WHERE usuario = u.usuario_nome;
RETURN cancao_total;
END $$
DELIMITER ;
