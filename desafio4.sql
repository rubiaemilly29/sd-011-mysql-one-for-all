CREATE VIEW top_3_artistas AS 
SELECT 
A.artista_name AS artista,
COUNT(*) AS seguidores
from  SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.seguidores AS S
ON S.artista_id = A.artista_id
group by `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
