CREATE VIEW cancoes_premium AS SELECT
song.song_name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS song
INNER JOIN
SpotifyClone.reproduction_history AS hist ON hist.song_id = song.song_id
INNER JOIN
SpotifyClone.users AS userr ON userr.user_id = hist.user_id
AND userr.plan_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
