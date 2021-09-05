USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE cancao_id INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_de_reproducoes
WHERE usuario_id = id INTO cancao_id;
RETURN cancao_id;
END $$
DELIMITER ;
