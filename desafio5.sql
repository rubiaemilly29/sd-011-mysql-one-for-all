CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao, COUNT(hr.cancao_id) `reproducoes`
FROM cancoes c
INNER JOIN historico_reproducoes hr
ON hr.cancao_id = c.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao
LIMIT 2;
