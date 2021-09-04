USE SpotifyClone;

DELIMITER $$
CREATE PROCEDURE albuns_do_artista (IN nome_do_artista VARCHAR(45))
BEGIN
  SELECT nome_do_artista AS `artista`,
  album_nome AS `album`
  FROM albuns
  WHERE  artista_id IN (
    SELECT artista_id
    FROM artistas
    WHERE artista_nome = nome_do_artista
  )
  ORDER BY `album`;
END $$
DELIMITER ;
