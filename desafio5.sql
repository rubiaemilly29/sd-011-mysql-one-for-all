CREATE VIEW
top_2_hits_do_momento
AS
SELECT
t1.name_song AS "cancao",
COUNT(t2.song_id) AS "reproducoes"
FROM SpotifyClone.songs AS t1
INNER JOIN SpotifyClone.musics_history AS t2
ON t1.song_id = t2.song_id
GROUP BY t2.song_id
ORDER BY
`reproducoes` DESC,
`cancao`
LIMIT 2;
