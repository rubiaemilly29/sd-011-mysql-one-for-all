CREATE VIEW top_2_hits_do_momento AS
SELECT s.name AS 'cancao',
COUNT(u.user_id) as 'reproducoes'
FROM Reproduction_history rh
INNER JOIN Song s
INNER JOIN User u
ON rh.user_id = u.user_id AND rh.song_id = s.song_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
