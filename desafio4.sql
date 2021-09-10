CREATE VIEW top_3_artistas AS
SELECT
A.artista,
COUNT(S.usuario_id) seguidores
FROM SpotifyClone.Artistas A
INNER JOIN SpotifyClone.Seguindo_artistas S
ON A.artista_id = S.artista_id
GROUP BY A.artista_id
ORDER BY `seguidores` DESC, A.artista
LIMIT 3;
