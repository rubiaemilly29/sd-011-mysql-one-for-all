CREATE VIEW top_3_artistas AS
SELECT s.first_name AS artista, COUNT(f.user_id) AS seguidores
FROM SpotifyClone.Followers AS f
INNER JOIN SpotifyClone.Singer AS s ON s.singer_id = f.singer_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
