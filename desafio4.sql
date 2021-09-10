CREATE VIEW top_3_artistas AS
SELECT 
a.artista AS "artista",
COUNT(u.usuario_id) AS "seguidores"
FROM SpotifyClone.artistas AS a

INNER JOIN SpotifyClone.artistas_seguidos AS arts
ON a.artista_id = arts.artista_id

INNER JOIN SpotifyClone.usuarios AS u
ON arts.usuario_id = u.usuario_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista` ASC
LIMIT 3;
