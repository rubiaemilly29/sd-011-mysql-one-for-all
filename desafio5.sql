CREATE VIEW top_2_hits_do_momento AS
SELECT 
s.song_name as `cancao`,
COUNT(lh.song_id) as `reproducoes`
FROM SpotifyClone.LISTENING_HISTORY as lh
INNER JOIN SpotifyClone.SONGS as s on s.song_id = lh.song_id
GROUP BY lh.song_id
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
