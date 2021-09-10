CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    m.cancao_nome AS 'nome',
    u.usuario_nome AS 'usuario'
  FROM
    SpotifyClone.historico_reproducoes AS uh
  INNER JOIN
    SpotifyClone.users AS u
    ON u.usuario_id = uh.usuario_id
  INNER JOIN
    SpotifyClone.cancoes AS m
    ON m.cancao_id = uh.cancao_id
  ORDER BY
    u.usuario_nome ASC,
    m.cancao_nome ASC;
