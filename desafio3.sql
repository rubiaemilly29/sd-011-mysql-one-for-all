CREATE VIEW historico_reproducao_usuarios AS
  SELECT 
  u.nome_usuario AS usuario,
  c.nome_cancao  AS nome
  FROM SpotifyClone.historico_de_reproducoes AS h
  INNER JOIN SpotifyClone.usuarios AS u
  ON u.id_usuario = h.id_usuario
  INNER JOIN SpotifyClone.cancao AS c
  ON h.id_cancao = c.id_cancao
  ORDER BY u.nome_usuario ASC,
  c.nome_cancao ASC;

