CREATE VIEW perfil_artistas AS
SELECT 
b.nome_artista AS artista,
a.nome_album AS album,
COUNT(a.nome_album) AS seguidores
FROM SpotifyClone.Albuns AS a
INNER JOIN SpotifyClone.Artistas AS b
ON a.artista_id = b.artista_id
INNER JOIN SpotifyClone.Historico_Seguidores AS H
ON a.artista_id = H.artista_id
GROUP BY b.nome_artista, a.nome_album
ORDER BY COUNT(a.nome_album) DESC, b.nome_artista, a.nome_album;
