CREATE VIEW `top_2_hits_do_momento` AS 
SELECT c.cancao AS cancao,
  (SELECT COUNT(*) FROM historico_de_reproducao AS h WHERE h.cancao_id = c.cancao_id) AS reproducoes
FROM cancoes AS c
ORDER BY reproducoes DESC, cancao
LIMIT 2;
