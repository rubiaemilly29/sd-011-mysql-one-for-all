DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN singer_name VARCHAR(50))
BEGIN
SELECT singer.singer AS artista,
        album.album AS album
FROM singer AS singer
INNER JOIN album AS album
ON singer.singer_id = album.singer_id
WHERE singer.singer = singer_name
ORDER BY `album`;
END $$
DELIMITER ;
