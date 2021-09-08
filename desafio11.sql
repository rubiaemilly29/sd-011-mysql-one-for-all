CREATE VIEW cancoes_premium AS
SELECT S.song nome,
COUNT(H.user_id) reproducoes
FROM SpotifyClone.history H
INNER JOIN SpotifyClone.songs S
ON H.song_id = S.song_id
INNER JOIN SpotifyClone.user_info U
ON U.user_id = H.user_id
WHERE U.plan_id <> 1
GROUP BY S.song
ORDER BY nome;
