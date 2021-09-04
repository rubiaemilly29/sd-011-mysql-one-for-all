CREATE VIEW cancoes_premium AS
SELECT m.nome_musica AS nome,
COUNT(*) AS reproducoes
FROM musicas AS m
INNER JOIN historico AS h
INNER JOIN usuarios AS u
INNER JOIN planos AS p
ON h.id_musica = m.id_musica
AND u.id_usuario = h.id_usuario
AND u.id_plano = p.id_plano
WHERE p.id_plano IN ('2', '3')
GROUP BY nome
ORDER BY nome;
