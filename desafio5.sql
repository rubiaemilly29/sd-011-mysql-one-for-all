CREATE VIEW top_2_hits_do_momento AS (
SELECT m.music AS cancao, COUNT(h.music_id) AS reproducoes
FROM SpotifyClone.`history` AS h
INNER JOIN SpotifyClone.musics AS m ON h.music_id = m.music_id
GROUP BY h.music_id
ORDER BY reproducoes DESC, cancao ASC LIMIT 2
);
