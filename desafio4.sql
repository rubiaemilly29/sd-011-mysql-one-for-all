CREATE VIEW top_3_artistas AS
SELECT A.artista artista, COUNT(S.seguindo_artistas) seguidores
FROM SpotifyClone.artistas A
INNER JOIN SpotifyClone.seguindo S
ON A.artista_id = S.artista_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
