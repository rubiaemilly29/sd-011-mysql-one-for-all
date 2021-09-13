CREATE VIEW top_3_artistas AS
SELECT artist.nome_artista AS artista,
    COUNT(followers.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artist
    INNER JOIN 
        SpotifyClone.seguindo_artistas AS followers ON artist.artista_id = followers.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
