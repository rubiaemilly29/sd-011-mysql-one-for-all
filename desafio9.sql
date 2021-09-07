DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN 
SELECT nome as artista, AL.album
FROM SpotifyClone.artistas AS AR
INNER JOIN SpotifyClone.albuns AS AL
ON AR.id_artista = AL.id_artista
WHERE nome = AR.nome
ORDER BY 2 ASC;
END $$
DELIMITER ;
