CREATE VIEW top_3_artistas AS
SELECT 
A.nome_artista AS artista,
COUNT(DISTINCT U.usuario_id) AS seguidores
FROM
artista AS A
INNER JOIN
seguidores AS S ON A.artista_id = S.artista_id
INNER JOIN
usuario AS U ON S.usuario_id = U.usuario_id
GROUP BY A.nome_artista
ORDER BY seguidores DESC, artista ASC
LIMIT 3;
