CREATE VIEW top_3_artistas AS
SELECT A.c_artist AS artista,
COUNT(U.c_user) AS seguidores
FROM t_artists AS A
INNER JOIN t_follow_artists AS F
ON A.id_artist = F.fk_id_artist
INNER JOIN t_users AS U
ON F.fk_id_user = U.id_user
GROUP BY A.c_artist
ORDER BY seguidores DESC, artista
LIMIT 3;
