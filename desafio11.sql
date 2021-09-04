CREATE VIEW cancoes_premium AS
SELECT S.song_title AS 'nome',
COUNT(SH.song_id) AS 'reproducoes'
FROM SpotifyClone.Songs S
INNER JOIN SpotifyClone.Songs_Historic SH
ON S.song_id = SH.song_id
INNER JOIN SpotifyClone.Users U
ON U.user_id = SH.user_id
WHERE U.subscription_id IN (2,3)
GROUP BY nome
ORDER BY nome;
