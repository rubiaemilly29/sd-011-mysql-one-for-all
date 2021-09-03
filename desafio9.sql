DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist VARCHAR(100))
BEGIN
SELECT AR.Nome AS artista, AL.Titulo AS album FROM SpotifyClone.Album AS AL
INNER JOIN SpotifyClone.Artista AS AR
ON AR.Artista_ID = AL.Artista_ID AND artist = AR.nome
ORDER BY album;
END$$
DELIMITER ;
