CREATE VIEW `historico_reproducao_usuarios` AS
SELECT u.usuario AS usuario, c.cancao AS nome
FROM historico_de_reproducao AS h
INNER JOIN usuarios AS u
ON h.usuario_id = u.usuario_id
INNER JOIN cancoes AS c
ON h.cancao_id = c.cancao_id
ORDER BY u.usuario, c.cancao;
