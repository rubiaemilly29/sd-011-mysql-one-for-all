CREATE VIEW perfil_artistas AS
SELECT artista.nome_artista AS artista,
album.nome_album AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artista AS artista
INNER JOIN
SpotifyClone.album AS album
ON album.artista_id = artista.artista_id
INNER JOIN
SpotifyClone.seguir_historico AS seguir_historico
ON seguir_historico.artista_id= artista.artista_id
GROUP BY artista, album
ORDER BY seguidores
DESC, artista, album;
