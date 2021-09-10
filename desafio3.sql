CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario usuario, C.title nome
FROM SpotifyClone.Cancoes C
INNER JOIN SpotifyClone.Historico_reproducoes H ON C.cancao_id = H.cancao_id
INNER JOIN SpotifyClone.Usuarios u ON u.usuario_id = H.usuario_id
ORDER BY `usuario`, `nome`;
