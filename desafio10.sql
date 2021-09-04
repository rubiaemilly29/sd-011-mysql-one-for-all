USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT DISTINCT(COUNT(usuario_id))
FROM SpotifyClone.historico
WHERE SpotifyClone.historico.usuario_id = usuario_id INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;
