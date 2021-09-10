create view top_2_hits_do_momento as
select
m.nome_musica AS 'cancao',
COUNT(h.musica_id) AS 'reproducoes'
FROM musica AS m
INNER JOIN historico AS h
ON h.musica_id = m.musica_id
GROUP BY h.musica_id
ORDER BY count(h.musica_id) DESC, m.nome_musica
LIMIT 2;
