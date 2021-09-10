DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musica INT;
SELECT COUNT(*)
FROM SpotifyClone.historico_reproducoes
WHERE usuario_id = id INTO quantidade_musica;
RETURN quantidade_musica;
END $$

DELIMITER ;
