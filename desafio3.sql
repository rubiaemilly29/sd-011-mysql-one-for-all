CREATE VIEW `historico_reproducao_usuarios` AS
SELECT
  usuario AS `usuario`,
  musica AS `nome`
FROM
  Usuarios AS U
  INNER JOIN Historico AS H ON U.usuario_id = H.usuario_id
  INNER JOIN Musicas AS M ON H.musica_id = M.musica_id
ORDER BY
  `usuario`,
  `nome`;
  