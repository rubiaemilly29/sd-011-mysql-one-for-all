CREATE VIEW top_2_hits_do_momento AS
SELECT 
cancao,
(SELECT COUNT(cancao_id) FROM historico AS a WHERE a.cancao_id = b.cancao_id) AS reproducoes
FROM cancoes AS b
ORDER BY reproducoes DESC, cancao
LIMIT 2;
