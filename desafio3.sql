CREATE VIEW historico_reproducao_usuarios AS
SELECT U.c_user AS usuario,
S.c_songs AS nome 
FROM t_users AS U
INNER JOIN t_h_reproductions AS H
ON H.fk_id_user = U.id_user
INNER JOIN t_songs AS S
ON S.id_songs = H.fk_id_songs
ORDER BY U.c_user, S.c_songs;
