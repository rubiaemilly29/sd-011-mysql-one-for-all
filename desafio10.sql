USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qtd_musicas INT;
    SELECT COUNT(*) AS quantidade_musicas_no_historico
    FROM musicas AS music
        INNER JOIN
            historico_de_reproducoes AS hr ON hr.musica_id = music.musica_id AND hr.usuario_id = usuario_id
        INTO qtd_musicas;
    RETURN qtd_musicas;
END $$
DELIMITER ;
