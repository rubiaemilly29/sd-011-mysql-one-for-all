CREATE VIEW top_3_artistas AS
SELECT 
    a.nome AS artista, COUNT(a_s.Usuario_ID) AS seguidores
FROM
    SpotifyClone.Artistas AS a
        INNER JOIN
    SpotifyClone.Artistas_seguidos AS a_s ON a.Artista_ID = a_s.Artista_ID
GROUP BY a.nome
ORDER BY seguidores DESC , artista
LIMIT 3;
