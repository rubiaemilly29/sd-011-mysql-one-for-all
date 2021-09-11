CREATE VIEW top_2_hits_do_momento AS
SELECT so.title AS cancao,
  COUNT(hs.song_id) AS reproducoes
FROM SpotifyClone.history AS hs
  INNER JOIN SpotifyClone.songs AS so ON hs.song_id = so.song_id
GROUP BY hs.song_id
ORDER BY reproducoes DESC,
  cancao ASC
LIMIT 2;
