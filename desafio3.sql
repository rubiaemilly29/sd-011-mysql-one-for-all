CREATE VIEW historico_reproducao_usuarios AS
  SELECT
    u.nome AS 'usuario',
    m.titulo AS 'nome'
  FROM
    usuario_historico_reproducoes AS uh
  INNER JOIN
    usuario AS u
    ON u.usuario_id = uh.usuario_id
  INNER JOIN
    musica AS m
    ON m.musica_id = uh.musica_id
  ORDER BY
    u.nome ASC,
    m.titulo ASC;
