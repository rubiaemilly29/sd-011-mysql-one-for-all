DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nome_do_artista VARCHAR(20))
BEGIN
SELECT artista,
nome AS album FROM SpotifyClone.albuns al
INNER JOIN SpotifyClone.artistas ar
ON al.artista_id = ar.artista_id
WHERE artista = nome_do_artista
ORDER BY album;
END $$

DELIMITER ;
