DELIMITER $$
CREATE FUNCTION quantidade_de_musicas_no_historico(usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_total INT;
SELECT COUNT(h.cancoesId) AS quantidade_de_musicas_no_historico
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuario AS u ON u.usuarioId = h.usuarioId
WHERE h.usuarioId = usuarioId INTO quantidade_total;
RETURN quantidade_total;
END $$
DELIMITER ;
SELECT quantidade_de_musicas_no_historico(3);
