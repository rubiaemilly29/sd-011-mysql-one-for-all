CREATE VIEW top_3_artistas AS
SELECT ar.nome_artista AS 'artista',
COUNT(se.id_artistas) AS 'seguidores'
FROM SpotifyClone.seguindo_artistas AS se
INNER JOIN SpotifyClone.artistas AS ar ON se.id_artistas = ar.id_artistas 
GROUP BY se.id_artistas
ORDER BY seguidores DESC,
  artista ASC
LIMIT 3;
