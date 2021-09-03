CREATE VIEW top_3_artistas AS
SELECT
A.nome AS 'artista',
COUNT(AC.usuario_id) AS seguidores
FROM SpotifyClone.artista_seguidores AS AC
LEFT JOIN SpotifyClone.artista AS A
ON AC.artista_id = A.artista_id
GROUP BY A.nome
ORDER BY COUNT(AC.usuario_id) DESC
LIMIT 3;
