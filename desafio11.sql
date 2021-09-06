CREATE VIEW cancoes_premium AS
SELECT
s.song_title AS nome,
COUNT(ph.song_id) AS reproducoes
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.play_history ph
ON s.song_id = ph.song_id
INNER JOIN SpotifyClone.users u
ON ph.user_id = u.user_id
INNER JOIN SpotifyClone.plans p
ON u.plan_id = p.plan_id
WHERE p.plan_type = 'familiar' OR p.plan_type = 'universitário'
GROUP BY s.song_title
ORDER BY 1;
