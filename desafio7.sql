CREATE VIEW perfil_artistas AS
SELECT artista AS "artista",
alb.album AS "album",
COUNT(artista) AS "seguidores"
FROM SpotifyClone.artistas AS a

INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id

INNER JOIN SpotifyClone.artistas_seguidos AS ars
ON a.artista_id = ars.artista_id

GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista` ASC;
