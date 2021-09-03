CREATE VIEW historico_reproducao_usuarios AS
SELECT
  U.user_name AS usuario,
  S.song_name AS nome
FROM
  SpotifyClone.reproduction_history AS RH
  INNER JOIN SpotifyClone.songs AS S ON RH.song_id = S.song_id
  INNER JOIN SpotifyClone.users AS U ON RH.user_id = U.user_id
ORDER BY
  U.user_name ASC,
  S.song_name ASC;
