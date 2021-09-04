CREATE VIEW historico_reproducao_usuarios AS
  SELECT (
    SELECT user.user_nome
    FROM SpotifyClone.usuarios AS user
    WHERE hist.user_id = user.user_id
  ) AS `usuario`,
  (
    SELECT c.cancao_nome
    FROM SpotifyClone.cancoes AS c
    WHERE hist.cancao_id = c.cancao_id
  ) AS `nome`
  FROM SpotifyClone.historico_de_reproducoes AS hist
  ORDER BY `usuario`, `nome`;
