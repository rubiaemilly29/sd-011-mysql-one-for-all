CREATE VIEW cancoes_premium AS
SELECT S.name AS nome,
COUNT(S.name) AS reproducoes
FROM SpotifyClone.Songs AS S
INNER JOIN SpotifyClone.History AS H
ON S.song_id = H.song_id
WHERE H.user_id IN (
SELECT user_id FROM SpotifyClone.Users WHERE plan_id <> 1)
GROUP BY S.name
ORDER BY nome;
