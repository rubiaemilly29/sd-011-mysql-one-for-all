CREATE VIEW perfil_artistas AS
SELECT
    artist.nome_artista AS artista,
    al.nome_album AS album,
    COUNT(followers.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artist
    INNER JOIN 
        SpotifyClone.albuns AS al ON artist.artista_id = al.artista_id 
  INNER JOIN
    SpotifyClone.seguindo_artistas AS followers ON artist.artista_id = followers.artista_id
GROUP BY `artista`,`album`
ORDER BY `seguidores` DESC, `artista`, `album`;
