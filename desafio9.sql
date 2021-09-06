DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(60))
BEGIN
SELECT ar.nome AS 'artista',
al.album AS 'album'
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
WHERE ar.nome = nome_artista
ORDER BY al.album;
END $$
DELIMITER ;
