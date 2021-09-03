USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(50))
BEGIN
SELECT
A.artist AS 'artista',
AB.album AS 'album'
FROM SpotifyClone.artists AS A
INNER JOIN SpotifyClone.albuns AS AB
ON A.artist_id = AB.artist_id
WHERE A.artist = artista;
END $$

DELIMITER;
