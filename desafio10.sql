DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(total_cancao VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE hist_rep INT;
SELECT COUNT(*)
FROM SpotifyClone.usuario u
INNER JOIN SpotifyClone.historico h
ON u.usuario_id = h.usuario_id
WHERE u.nome_usuario = total_cancao INTO hist_rep;
RETURN hist_rep;
END $$
DELIMITER ;
