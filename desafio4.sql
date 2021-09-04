CREATE VIEW top_3_artistas AS
SELECT (a.artista) as 'artista',
COUNT(*) as 'seguidores'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.seguindoartistas AS s
ON s.artistaId = a.artistaId
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
