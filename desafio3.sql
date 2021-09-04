CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario `usuario`, c.cancao AS `nome`
FROM usuarios u
INNER JOIN historico_reproducoes hr
ON hr.usuario_id = u.usuario_id
INNER JOIN cancoes c
ON c.cancao_id = hr.cancao_id
ORDER BY `usuario`, `nome`;
