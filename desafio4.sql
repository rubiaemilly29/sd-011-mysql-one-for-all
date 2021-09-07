CREATE VIEW top_3_artistas AS
SELECT 
A.nome AS 'artista', 
COUNT(ASE.usuario_id) AS 'seguidores'
FROM SpotifyClone.artista_seguidores AS ASE
LEFT JOIN SpotifyClone.artista AS A
ON ASE.artista_id = A.artista_id
GROUP BY A.nome
ORDER BY COUNT(ASE.usuario_id) DESC, A.nome
LIMIT 3;
