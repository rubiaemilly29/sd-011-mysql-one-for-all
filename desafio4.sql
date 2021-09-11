CREATE VIEW top_3_artistas AS
SELECT A.artista_nome AS artista, COUNT(S.id_assinante) AS seguidores
FROM SpotifyClone.seguindo S
INNER JOIN SpotifyClone.artistas A ON A.id_artista = S.id_artista
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
