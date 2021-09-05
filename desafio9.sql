DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artista VARCHAR(30))
  BEGIN
    SELECT ar.nome_artista AS artista, al.nome_album AS album
    FROM SpotifyClone.artistas AS ar
    INNER JOIN SpotifyClone.albuns AS al
    ON ar.artista_id = al.artista_id
    WHERE ar.nome_artista = artista
    ORDER BY `album`;
  END $$

DELIMITER ;
