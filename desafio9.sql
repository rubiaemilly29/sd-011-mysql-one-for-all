DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
SELECT
art.artista_nome AS artista,
alb.album_nome AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON alb.artista_id = art.artista_id
WHERE art.artista_nome = nome
ORDER BY album 
END $$
DELIMITER ;
