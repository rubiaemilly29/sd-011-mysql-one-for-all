USE SpotifyClone;

DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN performer VARCHAR(50))
BEGIN
SELECT P.performer_name AS'artista',
A.album_title AS 'album'
FROM SpotifyClone.Performers P
INNER JOIN SpotifyClone.Albuns A
ON P.performer_id = A.performer_id
WHERE P.performer_name = performer
ORDER BY album;
END $$

DELIMITER ;
