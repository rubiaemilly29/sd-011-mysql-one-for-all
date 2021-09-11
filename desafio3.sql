CREATE VIEW historico_reproducao_usuarios AS
SELECT us.name AS 'usuario',
  so.title AS 'nome'
FROM SpotifyClone.users AS us
  INNER JOIN SpotifyClone.history AS hs ON us.user_id = hs.user_id
  INNER JOIN SpotifyClone.songs AS so ON hs.song_id = so.song_id
ORDER BY us.name ASC,
  so.title ASC;
