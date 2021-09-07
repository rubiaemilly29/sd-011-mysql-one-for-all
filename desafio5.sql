CREATE VIEW top_2_hits_do_momento AS
SELECT
(SELECT C.cancao 
FROM  cancoes AS C
WHERE UC.id_cancoes = C.id_cancoes) AS cancao,
COUNT( id_usuarios) AS reproducoes
FROM usuarios_cancoes AS UC
GROUP BY UC.id_cancoes
ORDER BY reproducoes DESC, cancao
LIMIT 2;
