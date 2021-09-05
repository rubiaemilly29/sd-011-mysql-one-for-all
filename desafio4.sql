CREATE VIEW top_3_artistas AS
SELECT a.artista_nome AS artista,
(
SELECT COUNT(*)
FROM spotifyclone.artistas_seguidos AS f
WHERE f.artista_id = a.artista_id
) AS seguidores
FROM spotifyclone.artistas AS a
ORDER BY 2 DESC, 1 ASC
LIMIT 5;
