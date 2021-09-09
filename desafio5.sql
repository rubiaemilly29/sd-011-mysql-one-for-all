CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song_name AS 'cancao',
COUNT(h.user_id) AS 'reproducoes'
FROM historic AS h
INNER JOIN songs AS s
ON h.user_id = s.id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
