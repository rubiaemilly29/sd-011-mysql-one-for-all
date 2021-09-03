CREATE VIEW top_2_hits_do_momento AS
SELECT s.name AS 'cancao',
(SELECT COUNT(hr.song_id)
FROM SpotifyClone.history_reproduction hr
WHERE s.song_id = hr.song_id) AS 'reproducoes'
FROM SpotifyClone.songs s
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
