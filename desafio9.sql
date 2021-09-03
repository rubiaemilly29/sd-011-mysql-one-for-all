USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(200))
BEGIN
SELECT art.nome AS artista, alb.titulo AS album FROM artistas AS art
INNER JOIN albuns AS alb
ON alb.artista_id = art.artista_id
WHERE art.nome LIKE CONCAT('%', nome, '%')
ORDER BY album;
END $$
DELIMITER ;
