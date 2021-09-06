CREATE VIEW top_3_artistas AS
SELECT 
ar.artista  AS 'artista',
COUNT(sa.usuario_id) AS 'seguidores'
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.seguindo_artistas sa ON sa.artista_id = ar.id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
