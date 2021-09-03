DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id int)
RETURNS INT Reads SQL Data
BEGIN
DECLARE total_musicas INT;
SELECT
COUNT(id_cancao)
FROM SpotifyClone.historico
WHERE id_usuario=id
INTO total_musicas;
RETURN total_musicas;
END $$
DELIMITER ;
