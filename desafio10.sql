DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_total INT;
SELECT COUNT(h.cancoesId) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON u.usuarioId = h.usuarioId
WHERE h.usuarioId = id INTO quantidade_total;
RETURN quantidade_total;
END $$
DELIMITER ;
SELECT quantidade_musicas_no_historico(3);
