CREATE VIEW perfil_artistas AS
SELECT artista.nome_artista AS 'artista',
album.nome_album AS 'album',
COUNT(seguir_historico.artista_id) AS 'seguidores'
FROM SpotifyClone.album AS album
INNER JOIN SpotifyClone.seguir_historico AS seguir_historico
ON album.artista_id = seguir_historico.artista_id
INNER JOIN SpotifyClone.artista AS artista
ON album.artista_id = artista.artista_id
GROUP BY album.nome_album, artista.artista_id
ORDER BY COUNT(seguir_historico.artista_id)
DESC, artista.nome_artista, album.nome_album;
