DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN
    SELECT a.artista AS artista, ab.album AS album
    FROM SpotifyClone.artista AS a
    INNER JOIN SpotifyClone.album AS ab
    ON a.artista_id = ab.artista_id
    GROUP BY artista, album
    HAVING artista = nome
    ORDER BY album ASC;
END $$
DELIMITER ;
