CREATE VIEW perfil_artistas AS
SELECT a.nome_artista AS artista,
na.nome_album AS album,
COUNT(*) AS seguidores
FROM artistas AS a
INNER JOIN albuns AS na
ON a.id_artista = na.id_artista
INNER JOIN SpotifyClone.seguidores AS s
ON a.id_artista = s.id_artista
GROUP BY na.id_album
ORDER BY seguidores DESC, artista, album;
