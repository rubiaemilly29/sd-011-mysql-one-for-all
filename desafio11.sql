CREATE VIEW cancoes_premium AS
SELECT
  S.song_name AS nome,
  COUNT(S.song_id) AS reproducoes
FROM
  SpotifyClone.reproduction_history AS HR
  INNER JOIN SpotifyClone.songs AS S ON HR.song_id = S.song_id
  INNER JOIN SpotifyClone.users AS U ON HR.user_id = U.user_id
  AND U.plan_id <> 1
GROUP BY
  S.song_name
ORDER BY
  S.song_name ASC;
