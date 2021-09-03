DELIMITER $$

CREATE PROCEDURE SpotifyClone.albuns_do_artista(IN nomeDoArtista VARCHAR(60))
BEGIN
SELECT artista, album
FROM SpotifyClone.artistas AR
INNER JOIN SpotifyClone.albuns AL ON AL.artista_id = AR.artista_id
WHERE nomeDoArtista = AR.artista;
END $$

DELIMITER ;