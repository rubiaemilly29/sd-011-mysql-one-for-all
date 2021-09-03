CREATE VIEW top_2_hits_do_momento AS
SELECT
  S.song_name AS cancao,
  COUNT(*) AS reproducoes
FROM
  SpotifyClone.reproduction_history AS RF
  INNER JOIN SpotifyClone.songs AS S ON RF.song_id = S.song_id
GROUP BY
  S.song_id
ORDER BY
  COUNT(*) DESC,
  S.song_name ASC
LIMIT
  2;
