create view cancoes_premium as
select
m.nome_musica AS 'nome',
COUNT(h.musica_id) AS 'reproducoes'
FROM musica AS m
INNER JOIN historico AS h
ON m.musica_id = h.musica_id
INNER JOIN usuario AS u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
