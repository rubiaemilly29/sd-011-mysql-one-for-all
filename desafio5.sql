CREATE VIEW top_2_hits_do_momento AS
SELECT S.song cancao,
COUNT(H.user_id) reproducoes
FROM SpotifyClone.history H
INNER JOIN SpotifyClone.songs S
ON H.song_id = S.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
