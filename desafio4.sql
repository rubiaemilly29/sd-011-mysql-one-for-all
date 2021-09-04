CREATE VIEW top_3_artistas AS
SELECT singer.singer AS artistas,
       COUNT(followers.user_id) AS seguidores
FROM singer AS singer
INNER JOIN followers AS followers
ON singer.singer_id = followers.singer_id
GROUP BY singer.singer
ORDER BY `seguidores` DESC, `artistas`;
