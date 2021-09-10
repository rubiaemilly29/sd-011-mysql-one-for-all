DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_hisorico(nome_usuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE result_musics INT;
SELECT COUNT(cancao_id)
FROM SpotifyClone.historico_de_reproducao
WHERE usuario_id = nome_usuario INTO result_musics;
RETURN result_musics;
END $$
DELIMITER ;
