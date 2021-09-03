DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(id_artista INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SET qtd_musicas = (SELECT COUNT(*)
FROM SpotifyClone.cancoes AS c
INNER JOIN
SpotifyClone.albuns AS alb
ON alb.album_id = c.album_id
INNER JOIN
SpotifyClone.artistas AS art
ON art.artista_id = alb.artista_id
WHERE id_artista =  art.artista_id);
RETURN qtd_musicas;
END $$

DELIMITER ;
