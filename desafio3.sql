CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.nome  AS 'usuario',
c.cancao AS 'nome'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON hr.cancao_id = c.id
INNER JOIN SpotifyClone.usuario u ON hr.usuario_id = u.id
ORDER BY `usuario`, `nome`;
