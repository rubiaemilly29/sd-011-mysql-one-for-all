CREATE VIEW historico_reproducao_usuarios AS
SELECT
a.usuario AS usuario,
b.cancao AS nome
FROM historico as c
INNER JOIN usuarios AS a
ON a.usuario_id = c.usuario_id
INNER JOIN cancoes AS b
ON b.cancao_id = c.cancao_id
ORDER BY a.usuario, b.cancao;
