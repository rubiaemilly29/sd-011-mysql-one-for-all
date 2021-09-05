CREATE VIEW cancoes_premium AS
SELECT
a.cancao AS nome,
COUNT(a.cancao) AS reproducoes
FROM
cancoes AS a
INNER JOIN historico AS b
ON a.cancao_id = b.cancao_id
INNER JOIN usuarios AS c
ON b.usuario_id = c.usuario_id
WHERE c.plano_id > 1
GROUP BY a.cancao
ORDER BY a.cancao;
