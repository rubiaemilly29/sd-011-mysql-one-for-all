CREATE VIEW top_3_artistas AS
SELECT artist.nome_artista AS artista,
    COUNT(x.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artist
    INNER JOIN 
        SpotifyClone.seguindo_artistas AS x ON artist.artista_id = x.artista_id
GROUP BY `artista`
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
