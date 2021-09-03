CREATE VIEW SpotifyClone.top_2_hits_do_momento AS
SELECT
  S.song_name AS cancao,
  COUNT(SPH.song_id) AS reproducoes
FROM SpotifyClone.songs_playback_history AS SPH
INNER JOIN SpotifyClone.songs AS S
  ON S.song_id = SPH.song_id
GROUP BY SPH.song_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
