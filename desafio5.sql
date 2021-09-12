CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao, COUNT(h.cancao_id) AS reproducoes
FROM historico_reproducoes AS h
INNER JOIN cancoes AS c ON h.cancao_id = c.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao LIMIT 2;
