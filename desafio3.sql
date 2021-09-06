USE SpotifyClone;
CREATE VIEW historico_reproducao_usuarios AS
SELECT 
u.nome  AS 'usuario',
c.cancao AS 'nome'
FROM cancoes AS c
INNER JOIN historico_de_reproducoes hr ON hr.cancao_id = c.id
INNER JOIN usuario u ON hr.usuario_id = u.id
ORDER BY `usuario`, `nome`;
SELECT * FROM historico_reproducao_usuarios;
