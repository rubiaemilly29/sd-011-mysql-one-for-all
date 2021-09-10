CREATE VIEW historico_reproducao_usuarios AS
SELECT
	u.name AS 'usuario',
    s.song_name AS 'nome'
  FROM SpotifyClone.history AS h
  INNER JOIN SpotifyClone.users AS u ON h.usuario_id = u.usuario_id
  INNER JOIN SpotifyClone.song AS s ON h.song_id = s.song_id
  ORDER BY 1, 2;
