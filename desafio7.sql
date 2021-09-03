CREATE VIEW perfil_artistas AS SELECT A.artista AS artista, AL.album AS album, COUNT(*) AS seguidores
FROM SpotifyClone.usuario_seguindo_artista UA
INNER JOIN SpotifyClone.artistas A ON A.artista_id = UA.artista_id
INNER JOIN SpotifyClone.albuns AL ON AL.artista_id = UA.artista_id
GROUP BY AL.album_id
ORDER BY `seguidores` DESC, `artista`, `album`;