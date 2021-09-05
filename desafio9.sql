DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artistaNome VARCHAR(100))
BEGIN
    SELECT ar.nome_artista AS artista, a.nome_album AS album
    FROM SpotifyClone.artistas ar
    INNER JOIN SpotifyClone.albuns a ON a.artista_id = ar.artista_id
    WHERE ar.nome_artista = artistaNome
    ORDER BY album;
END $$

DELIMITER ;
