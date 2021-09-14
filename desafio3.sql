CREATE VIEW historico_reproducao_usuarios AS
SELECT us.nome_usuario AS 'usuario',
  ca.nome_cancao AS 'nome'
FROM SpotifyClone.usuarios AS us
  INNER JOIN SpotifyClone.historico_reproducoes AS hs ON us.id_usuarios = hs.id_usuarios
  INNER JOIN SpotifyClone.cancoes AS ca ON hs.id_cancoes = ca.id_cancoes
ORDER BY us.nome_usuario ASC,
  ca.nome_cancao ASC;
