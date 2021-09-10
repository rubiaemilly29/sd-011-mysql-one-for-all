DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_musicas INT;
SELECT
COUNT(h.id_cancao) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.usuarios AS u
ON h.id_usuario = u.id_usuario
WHERE u.id_usuario = id INTO quantidade_musicas;
RETURN quantidade_musicas;
END $$
DELIMITER ;
