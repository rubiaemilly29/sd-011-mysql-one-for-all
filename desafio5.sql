CREATE VIEW top_2_hits_do_momento AS
SELECT
c.titulo as 'cancao',
COUNT(*) as 'reproducoes'
FROM reproducoes as r
JOIN cancoes as c on r.cancao_id = c.id
GROUP BY c.id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
