USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_de_musicas_no_historico(usuarioId INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas_no_historico INT;
SELECT COUNT(*)
FROM SpotifyClone.historico
WHERE SpotifyClone.historico.usuarioId = usuarioId INTO quantidade_musicas_no_historico;
RETURN quantidade_musicas_no_historico;
END $$
DELIMITER ;
SELECT quantidade_de_musicas_no_historico(3);
