DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN name_artist VARCHAR(20))
BEGIN
SELECT a.artist_name AS `artista`,
al.album_name AS `album`
FROM spotifyclone.artists a
INNER JOIN spotifyclone.album al
ON al.artist_id = a.artist_id
WHERE a.artist_name = name_artist
ORDER BY `album`;
END $$
DELIMITER ;
