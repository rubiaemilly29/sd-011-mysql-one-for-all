DELIMITER $$
CREATE PROCEDURE albuns_do_artista(
IN artist_in VARCHAR(100)
)
BEGIN
SELECT A.artista `artista`,
AL.album `album`
FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.albuns AL
ON A.artista_id = AL.artista_id
WHERE A.artista = artist_in
ORDER BY `album`;
END $$
DELIMITER ;
