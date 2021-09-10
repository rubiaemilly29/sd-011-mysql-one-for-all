DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(50))
BEGIN
SELECT
n_artista.artista_nome AS artista,
albuns.album_nome AS album
FROM SpotifyClone.artistas AS n_artista
INNER JOIN SpotifyClone.albuns AS albuns
ON n_artista.artista_id = albuns.artista_id
WHERE n_artista.artista_nome = artista
ORDER BY album;
END $$

DELIMITER ;
