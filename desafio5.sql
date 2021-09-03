CREATE VIEW top_2_hits_do_momento AS
SELECT S.song AS cancao, 
COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS S
INNER JOIN SpotifyClone.listened_history AS H
ON S.song_id = H.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;
