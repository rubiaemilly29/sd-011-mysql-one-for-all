CREATE VIEW `cancoes_premium` AS
SELECT s.song_name AS `nome`,
COUNT(hist.song_id) AS `reproducoes`
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.history_play hist
ON  s.song_id = hist.song_id
INNER JOIN SpotifyClone.users u
ON u.user_id = hist.user_id
INNER JOIN SpotifyClone.plan plans
ON plans.plan_id = u.plan_id
WHERE u.plan_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
