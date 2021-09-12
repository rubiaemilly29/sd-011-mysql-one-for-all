CREATE VIEW perfil_artistas AS
    SELECT 
        art.nome AS artista,
        a.nome AS album,
        COUNT(a_s.Usuario_ID) AS seguidores
    FROM
        SpotifyClone.Artistas AS art
            INNER JOIN
        SpotifyClone.Albuns AS a ON art.Artista_ID = a.Artista_ID
            INNER JOIN
        SpotifyClone.Artistas_seguidos AS a_s ON art.Artista_ID = a_s.Artista_ID
    GROUP BY artista , album
    ORDER BY seguidores DESC , artista , album
