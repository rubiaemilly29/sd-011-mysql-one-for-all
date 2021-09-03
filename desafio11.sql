CREATE VIEW cancoes_premium AS
  SELECT
    m.titulo AS 'nome',
    COUNT(m.titulo) AS 'reproducoes'
  FROM
    SpotifyClone.musica AS m
  INNER JOIN
    SpotifyClone.usuario_historico_reproducoes AS uh
    ON uh.musica_id = m.musica_id
  INNER JOIN
    SpotifyClone.usuario AS u
    ON u.usuario_id = uh.usuario_id
  INNER JOIN
    SpotifyClone.plano AS p
    ON u.plano_id = p.plano_id
  WHERE
    p.titulo IN ('universitário', 'familiar')
  GROUP BY
    m.titulo
  HAVING
    COUNT(m.titulo) > 0
  ORDER BY
    m.titulo ASC;
