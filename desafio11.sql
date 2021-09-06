CREATE VIEW cancoes_premium AS
SELECT m.music_name AS nome,
COUNT(r.user_id) AS reproducoes
FROM SpotifyClone.reproduction_history AS r
INNER JOIN SpotifyClone.music AS m
ON m.music_id = r.music_id
INNER JOIN SpotifyClone.user AS u
ON u.user_id = r.user_id
INNER JOIN SpotifyClone.plan AS p
ON p.plan_id = u.plan_id
WHERE p.plan_name IN ('familiar', 'universitário')
GROUP BY nome
ORDER BY nome;
