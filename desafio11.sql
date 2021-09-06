CREATE VIEW cancoes_premium AS
SELECT s.name AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS rh
ON s.song_id = rh.song_id
INNER JOIN SpotifyClone.users AS u
ON u.user_id = rh.user_id
WHERE u.plan_id IN (2,3)
GROUP BY `nome`
ORDER BY `nome`;
