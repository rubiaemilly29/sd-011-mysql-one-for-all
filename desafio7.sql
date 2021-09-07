CREATE VIEW perfil_artistas AS
SELECT AR.artista AS artista,
album AS album,
COUNT(US.id_usuarios) AS seguidores
FROM artistas AS AR
INNER JOIN albuns AS AB
ON AR.id_artista = AB.id_artista
INNER JOIN usuario_seguidor AS US
ON US.id_artista = AB.id_artista
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
