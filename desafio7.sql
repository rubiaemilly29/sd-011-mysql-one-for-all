CREATE VIEW perfil_artistas AS SELECT
artista.artista_nome AS artista,
album.album_nome AS album,
COUNT(a_seguidores.usuario_id) AS seguidores
FROM SpotifyClone.artistas as artista
INNER JOIN SpotifyClone.albuns as album
ON artista.artista_id = album.artista_id
INNER JOIN SpotifyClone.artistas_seguidores AS a_seguidores
ON artista.artista_id = a_seguidores.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
