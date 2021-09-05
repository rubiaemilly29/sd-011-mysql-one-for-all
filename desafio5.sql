CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancoes AS cancao,
COUNT(*) AS reproducoes
FROM cancoes C
INNER JOIN historico_reproducoes HR ON HR.cancoes_id = C.cancoes_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
