DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(50))
  BEGIN
    SELECT a.nome_artista AS artista, al.nome_album AS album
    FROM SpotifyClone.artistas AS a
    INNER JOIN SpotifyClone.albuns AS al
    ON a.artista_id = al.artista_id
    WHERE a.nome_artista = artista
    ORDER BY album;
  END $$

DELIMITER ;
