CREATE VIEW top_3_artistas AS
SELECT (SELECT artist_name FROM artist AS A
WHERE A.artist_id = FA.artist_id) AS artista,
COUNT(user_id) AS seguidores
FROM following_artists AS FA
GROUP BY artist_id
ORDER BY seguidores DESC, artista
LIMIT 3;
