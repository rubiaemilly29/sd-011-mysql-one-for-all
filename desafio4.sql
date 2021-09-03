CREATE VIEW top_3_artistas AS
SELECT
nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM
SpotifyClone.Artista AS art
INNER JOIN 
SpotifyClone.Seguindo_Artista AS s_art ON art.id = s_art.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
