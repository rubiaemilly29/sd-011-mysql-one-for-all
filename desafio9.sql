USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artistName VARCHAR(50))
BEGIN
    SELECT
    artistName AS `artista`,
    Album.nome AS `album`
    FROM SpotifyClone.Album Album
    INNER JOIN SpotifyClone.Artista Artista
    ON Album.artista_id = Artista.artista_id
    WHERE Artista.nome = artistName
    ORDER BY Album.nome;
END $$
DELIMITER ;
