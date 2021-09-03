CREATE VIEW top_2_hits_do_momento AS
SELECT ALS.Songs cancao,
COUNT(User_id) reproducoes
FROM SpotifyClone.AllSongs ALS
INNER JOIN SpotifyClone.Songs_history SH
ON SH.Songs_id = ALS.Songs_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
