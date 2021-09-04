CREATE VIEW `historico_reproducao_usuarios` AS
SELECT
  musica AS `nome`,
  count(*) AS `reproducoes`
FROM
  Usuarios AS U
  INNER JOIN Historico AS H ON U.usuario_id = H.usuario_id
  INNER JOIN Musicas AS M ON H.musica_id = M.musica_id
WHERE
  U.plano_id IN (2, 3)
GROUP BY
  `nome`
ORDER BY
  `nome`;
