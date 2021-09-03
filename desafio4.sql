CREATE VIEW top_3_artistas AS
SELECT
nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM
SpotifyClone.Artista AS a
INNER JOIN 
SpotifyClone.Seguindo_Artista AS s_a ON a.id = s_a.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
