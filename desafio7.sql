CREATE VIEW perfil_artistas AS
    SELECT ar.nome_artista AS artista, a.nome_album AS album,  COUNT(s.usuario_id) AS seguidores
    FROM SpotifyClone.artistas ar
    INNER JOIN SpotifyClone.albuns a ON a.artista_id = ar.artista_id
    INNER JOIN SpotifyClone.seguindo_artistas s ON s.artista_id = a.artista_id
GROUP BY artista, album
    ORDER BY seguidores DESC, artista, album;
