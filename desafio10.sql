DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE music_total INT;
    SELECT COUNT(*)
    FROM SpotifyClone.historico_de_reproducoes AS h
    WHERE h.usuario_id = usuario_id INTO music_total;
    RETURN music_total;
END $$
DELIMITER ;
