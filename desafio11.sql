CREATE VIEW cancoes_premium AS
SELECT m.music_name AS nome, COUNT(h.user_id) AS reproducoes
FROM SpotifyClone.History AS h
INNER JOIN SpotifyClone.User AS u ON u.user_id = h.user_id
INNER JOIN SpotifyClone.Music AS m ON m.music_id = h.music_id
WHERE u.plan_id <> 1
GROUP BY nome
ORDER BY nome;
