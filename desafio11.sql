CREATE VIEW cancoes_premium AS
SELECT songs.songs AS nome,
        COUNT(songs.songs) AS reproducoes
FROM songs AS songs
INNER JOIN reproduction_history AS reproduction_history
ON songs.songs_id = reproduction_history.songs_id
WHERE reproduction_history.songs_id IN (
  SELECT user_id FROM user WHERE plan_id <> 1
)
GROUP BY songs.songs
ORDER BY `nome`;

SELECT songs.songs AS nome,
        COUNT(songs.songs) AS reproducoes
FROM songs AS songs
INNER JOIN reproduction_history AS reproduction_history
ON songs.songs_id = reproduction_history.songs_id
INNER JOIN user AS user
ON reproduction_history.user_id = user.user_id
WHERE user.plan_id = 2 OR user.plan_id = 3
GROUP BY `nome`
ORDER BY `nome`;
