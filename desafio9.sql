DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN

SELECT ar.nome AS artista, al.album AS album 
FROM SpotifyClone.artistas as ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id
WHERE ar.nome = artista;

END $$

DELIMITER ;
