CREATE VIEW historico_reproducao_usuarios AS
SELECT us.nome_usuario AS 'usuario',
  ca.nome_cancao AS 'nome'
FROM SpotifyClone.usuarios AS us
  INNER JOIN SpotifyClone.historico_reproducoes AS hs ON us.user_id = hs.user_id
  INNER JOIN SpotifyClone.cancoes AS ca ON hs.song_id = ca.song_id
ORDER BY us.nome_usuario ASC,
  ca.nome_cancao ASC;
