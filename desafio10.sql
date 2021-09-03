USE SpotifyClone;
DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(usuario_id INT)
RETURNS INT READS SQL DATA
BEGIN
 DECLARE musicas_total INT;
SELECT COUNT(*) AS quantidade_musicas_no_historico FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON hr.musica_id = m.musica_id AND hr.usuario_id = usuario_id
INTO musicas_total;
RETURN musicas_total;
END $$
DELIMITER ;
