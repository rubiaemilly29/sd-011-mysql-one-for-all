SELECT s.name AS 'nome', COUNT(*) AS 'reproducoes'
FROM SpotifyClone.songs s
INNER JOIN SpotifyClone.history_reproduction hr
ON s.song_id = hr.song_id
INNER JOIN SpotifyClone.users u
ON u.user_id = hr.user_id
WHERE u.plan_id IN (2,3)
GROUP BY `nome`
ORDER BY `nome`;
