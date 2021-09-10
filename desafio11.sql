create view cancoes_premium as
select
m.nome_musica AS 'nome',
COUNT(h.nome_usuario) AS 'reproducoes'
FROM historico AS h
INNER JOIN musica AS m
ON h.usuario_id = m.musica_id
INNER JOIN usuario AS u
ON h.usuario_id = u.usuario_id
WHERE planos_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
