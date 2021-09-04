CREATE VIEW perfil_artistas AS
SELECT A.c_artist AS artista,
AB.c_album AS album,
COUNT(F.fk_id_user) AS seguidores
FROM t_artists AS A
INNER JOIN t_album AS AB
ON AB.fk_id_artist = A.id_artist
INNER JOIN t_follow_artists AS F
ON F.fk_id_artist = AB.fk_id_artist
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
