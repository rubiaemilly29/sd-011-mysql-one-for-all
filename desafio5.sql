CREATE VIEW top_2_hits_do_momento AS
SELECT
s.song_name AS 'cancao',
    COUNT(s.song_id) AS 'reproducoes'
  FROM SpotifyClone.history AS h
  INNER JOIN SpotifyClone.song AS s ON h.song_id = s.song_id
  GROUP BY 1
  ORDER BY 2 DESC, 1
  LIMIT 2;
