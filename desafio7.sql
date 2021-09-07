CREATE VIEW perfil_artistas AS SELECT
a.nome_artista AS artista,
al.nome_album AS album,
COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albums as al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas as s
ON a.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
