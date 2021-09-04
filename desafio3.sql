CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS usuario,
c.cancoes AS nome
FROM usuarios u 
INNER JOIN historico_reproducoes hr ON hr.usuario_id = u.usuario_id
INNER JOIN cancoes c ON c.cancoes_id = hr.cancoes_id
ORDER BY `usuario`, `nome`;
