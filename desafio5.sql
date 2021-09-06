CREATE VIEW top_2_hits_do_momento AS
SELECT s.name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.reproduction_history AS rh 
ON rh.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`ASC
LIMIT 2;
