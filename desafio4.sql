CREATE VIEW top_3_artistas AS
SELECT
A.artista AS `artista`,
COUNT(usuario_id) AS `seguidores`
FROM SpotifyClone.Seguidores AS S
INNER JOIN SpotifyClone.Artista AS A
ON S.artista_id = A.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
