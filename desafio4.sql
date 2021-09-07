CREATE VIEW top_3_artistas AS
SELECT
(SELECT A.artista 
FROM  artistas AS A
WHERE US.id_artista = A.id_artista) AS artista,
COUNT( id_usuarios) AS seguidores
FROM usuario_seguidor AS US
GROUP BY id_artista
ORDER BY seguidores DESC, artista
LIMIT 3;
