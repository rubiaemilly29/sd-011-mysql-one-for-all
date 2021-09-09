DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
    SELECT AR.name AS artista, AL.name AS album
    FROM SpotifyClone.artists AS AR
    INNER JOIN SpotifyClone.albuns AS AL ON AL.artist_id = AR.artist_id
    WHERE AR.name = nome
    ORDER BY album;
END $$

DELIMITER ;
