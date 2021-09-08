CREATE VIEW top_3_artistas AS
SELECT (SELECT artist_name FROM artist AS a
WHERE a.artist_id = fa.artist_id) AS artista,
COUNT(user_id) AS seguidores
FROM following_artists AS fa
GROUP BY artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
