CREATE VIEW cancoes_premium AS
SELECT S.c_songs AS nome,
COUNT(*) AS reproducoes
FROM t_songs AS S
INNER JOIN t_h_reproductions AS H
INNER JOIN t_users AS U
INNER JOIN t_flat AS F
ON S.id_songs = H.fk_id_songs
AND F.id_flat = U.fk_c_flat
AND H.fk_id_user = U.id_user
WHERE F.id_flat IN('2', '3')
GROUP BY nome
ORDER BY nome ASC;
