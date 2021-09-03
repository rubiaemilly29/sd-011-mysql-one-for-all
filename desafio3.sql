CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
  U.user_name AS `usuario`,
  S.song_name AS `nome`
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.songs_playback_history AS SPH
  ON SPH.user_id = U.user_id
INNER JOIN SpotifyClone.songs AS S
  ON S.song_id = SPH.song_id
ORDER BY `usuario`, `nome`;
