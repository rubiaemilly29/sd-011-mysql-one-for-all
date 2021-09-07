CREATE VIEW top_3_artistas AS
SELECT (SELECT nome_do_artista FROM artista AS A
WHERE A.artista_id = FA.artista_id) AS artista,
COUNT(usuario_id) AS seguidores
FROM segue_artista AS FA
GROUP BY artista_id
ORDER BY seguidores DESC, 
artista
LIMIT 3;
