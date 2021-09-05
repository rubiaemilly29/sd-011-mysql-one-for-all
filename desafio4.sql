CREATE VIEW top_3_artistas AS
SELECT a.artista_nome,
COUNT(f.artista_id)
from spotifyclone.artistas AS a
INNER JOIN spotifyclone.artistas_seguidos  AS f
ON f.artista_id = a.artista_id
GROUP BY a.artista_nome
ORDER BY COUNT(f.artista_id) DESC, a.artista_nome ASC
LIMIT 3;
