CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome AS 'usuario',
c.titulo AS 'nome'
FROM reproducoes AS r
JOIN usuarios AS u ON r.usuario_id = u.id
JOIN cancoes AS c ON r.cancao_id = c.id
ORDER BY usuario, nome;
