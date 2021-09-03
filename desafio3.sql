CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario_name AS usuario, c.cancao_name AS nome FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicos AS h
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancao_id
ORDER BY `usuario`, `nome`;
-- SELECT * FROM historico_reproducao_usuarios;
