CREATE VIEW top_3_artistas AS SELECT
art.artist_name AS artista,
COUNT(*) AS seguidores
FROM SpotifyClone.artists AS art
INNER JOIN
SpotifyClone.following_artist AS foll ON foll.artist_id = art.artist_id
GROUP BY foll.artist_id
ORDER BY seguidores DESC, artista ASC LIMIT 3;
