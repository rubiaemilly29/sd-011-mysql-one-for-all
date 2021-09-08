CREATE VIEW top_2_hits_do_momento AS
  SELECT
    m.titulo AS 'cancao',
    (
      SELECT
        COUNT(*)
      FROM
        SpotifyClone.usuario_historico_reproducoes AS uh
      WHERE
        uh.musica_id = m.musica_id
    ) AS reproducoes
  FROM
    SpotifyClone.musica AS m
  ORDER BY
    2 DESC,
    1 ASC
  LIMIT 2;
