CREATE VIEW perfil_artistas AS
SELECT
    artist.nome_artista AS artista,
    album_artist.nome_album AS album,
    COUNT(followers_artist.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artist
    INNER JOIN
        SpotifyClone.album_artist AS album_artist ON artist.artista_id = album_artist.artista_id 
    INNER JOIN
        SpotifyClone.seguindo_artistas AS followers_artist ON artist.artista_id = followers_artist.artista_id
GROUP BY `artista`,`album`
ORDER BY `seguidores` DESC, `artista`, `album`;
