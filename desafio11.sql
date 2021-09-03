CREATE VIEW cancoes_premium AS
  SELECT
    S.song_name AS nome,
    COUNT(S.song_name) AS reproducoes
  FROM SpotifyClone.songs AS S
  INNER JOIN SpotifyClone.songs_playback_history AS SPH
    ON SPH.song_id = S.song_id
  WHERE SPH.user_id IN (
    SELECT user_id FROM SpotifyClone.users WHERE plan_id <> 1
  )
  GROUP BY S.song_name
  ORDER BY nome;
