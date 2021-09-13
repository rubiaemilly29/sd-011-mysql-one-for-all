DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artistName VARCHAR(50))
BEGIN
SELECT 
    CONCAT(artist.firstName, ' ', artist.lastName) AS artista,
    record.title AS album
FROM
    SpotifyClone.artists AS artist
        INNER JOIN
    SpotifyClone.albums AS record ON artist.artistId = record.artistId
WHERE
    CONCAT(artist.firstName, ' ', artist.lastName) = artistName
ORDER BY album ASC;
END $$

DELIMITER ; 
