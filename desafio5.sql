CREATE VIEW top_2_hits_do_momento AS
SELECT
song_name as 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.songs AS s
INNER JOIN reproduction_history AS `history`
ON `history`.song_id =  s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
