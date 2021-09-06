CREATE VIEW cancoes_premium AS (
SELECT m.music AS nome,
COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.plans AS p
ON u.plan_id = p.plan_id
INNER JOIN SpotifyClone.`history` AS h
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.musics AS m
ON m.music_id = h.music_id
WHERE p.plan IN ('familiar', 'universitario')
GROUP BY h.music_id
ORDER BY nome;
);
