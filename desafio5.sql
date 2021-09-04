CREATE VIEW top_2_hits_do_momento AS
SELECT S.c_songs AS cancao,
COUNT(H.fk_id_user) AS reproducoes
FROM t_songs AS S
INNER JOIN t_h_reproductions AS H
ON H.fk_id_songs = S.id_songs
GROUP BY S.id_songs
ORDER BY reproducoes DESC, cancao
LIMIT 2;
