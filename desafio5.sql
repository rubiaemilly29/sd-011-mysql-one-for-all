REATE VIEW top_2_hits_do_momento AS
SELECT S.song_title AS 'cancao',
(
SELECT COUNT(*)
FROM SpotifyClone.Songs_Historic SH
WHERE SH.song_id = S.song_id
) AS 'reproducoes'
FROM SpotifyClone.Songs S
ORDER BY reproducoes DESC, cancao
LIMIT 2;
