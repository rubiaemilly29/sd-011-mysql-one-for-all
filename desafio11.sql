CREATE VIEW
cancoes_premium
AS
SELECT t1.name_song AS "nome",
COUNT(*) AS "reproducoes"
FROM SpotifyClone.songs AS t1
INNER JOIN SpotifyClone.musics_history AS t2
ON t1.song_id = t2.song_id
INNER JOIN SpotifyClone.userSpotify AS t3
ON t2.user_id = t3.user_id
INNER JOIN SpotifyClone.plan AS t4
ON t3.plan_id = t4.plan_id
WHERE t4.plan_id IN (2, 3)
GROUP BY `nome`
ORDER BY `nome`;
