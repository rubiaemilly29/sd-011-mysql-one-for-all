DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(nome_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result_musics INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducao
WHERE usuario_id = nome_usuario INTO result_musics;
RETURN result_musics;
END $$
DELIMITER ;
