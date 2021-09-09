CREATE VIEW top_3_artistas AS
SELECT s.name AS artista, COUNT(u.user_id) AS seguidores
FROM SpotifyClone.singers s
INNER JOIN SpotifyClone.following_singers fs
ON s.singer_id = fs.singer_id
INNER JOIN SpotifyClone.users u
ON u.user_id = fs.user_id
GROUP BY s.name
ORDER BY COUNT(u.user_id) DESC, s.name
LIMIT 3;
