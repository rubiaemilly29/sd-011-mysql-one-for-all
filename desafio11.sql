CREATE VIEW cancoes_premium AS
SELECT S.c_songs AS nome,
COUNT(*) AS reproducoes
FROM t_songs AS S
INNER JOIN t_users AS U
INNER JOIN t_flat AS F
INNER JOIN t_h_reproductions AS H
ON H.fk_id_user = U.id_user
AND F.id_flat = U.fk_c_flat
AND S.id_songs = H.fk_id_songs
GROUP BY nome
ORDER BY nome ASC;
