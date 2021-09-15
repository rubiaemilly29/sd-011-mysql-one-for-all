USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(30))
BEGIN
    SELECT artist.nome_artista AS artista, al.nome_album AS album
    FROM artistas AS artist
        INNER JOIN albuns AS al ON al.artista_id = artist.artista_id
    WHERE artist.nome_artista = artista
    ORDER BY album;
END $$
DELIMITER ;
