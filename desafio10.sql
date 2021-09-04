DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM spotifyclone.historico_reproducoes
WHERE usuario_id = user_id INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;
