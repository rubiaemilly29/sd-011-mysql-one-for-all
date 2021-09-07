DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(50))
  BEGIN
    SELECT a.artista_nome AS artista, al.album_nome AS album
    FROM SpotifyClone.artistas AS a
    INNER JOIN SpotifyClone.albuns AS al
    ON a.artista_id = al.artista_id
    WHERE a.artista_nome = artista
    ORDER BY album;
  END $$

DELIMITER ;
