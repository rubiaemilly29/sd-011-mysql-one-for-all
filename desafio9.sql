DELIMITER $$ 
CREATE PROCEDURE albuns_do_artista (IN artistas varchar(80)) BEGIN
SELECT ar.nome_artista AS 'artista',
  ab.nome_album AS 'album'
FROM SpotifyClone.artistas AS ar
  INNER JOIN SpotifyClone.albuns AS ab
  ON ar.id_artistas = ab.id_artistas
WHERE ar.nome_artista = artistas
ORDER BY album;
END $$ 
DELIMITER;
