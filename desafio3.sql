CREATE VIEW historico_reproducao_usuarios AS
SELECT U.usuario AS `usuario`, C.cancao AS `nome`
FROM SpotifyClone.Historico_reproducoes AS H
INNER JOIN SpotifyClone.Usuario AS U
ON H.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.Cancoes AS C
ON H.cancao_id = C.cancao_id
ORDER BY `usuario`, `nome`;
