DELIMITER $$

CREATE PROCEDURE albunsDoArtista(IN  nome VARCHAR(50))
BEGIN
SELECT 
    a.artista,
    al.album
    FROM SpotifyClone.artistas AS a
	INNER JOIN SpotifyClone.albuns AS al ON a.artista_id = al.artista_id
        WHERE nome = a.artista
ORDER BY 2;
END $$
DELIMITER ;
