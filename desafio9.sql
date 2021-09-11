DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nomeArtista VARCHAR(100))
BEGIN
    SELECT AR.artista_nome AS artista, A.titulo AS album
    FROM SpotifyClone.artistas AR
    INNER JOIN SpotifyClone.albuns A ON A.id_artista = AR.id_artista
    WHERE AR.artista_nome = nomeArtista
    ORDER BY album;
END $$

DELIMITER ;
