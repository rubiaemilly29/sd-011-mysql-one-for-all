CREATE VIEW top_2_hits_do_momento AS
SELECT S.song_name AS cancao, COUNT(H.user_id) AS reproducoes
FROM historic AS H
INNER JOIN songs AS S ON S.song_id = H.song_id
GROUP BY H.song_id HAVING reproducoes > 1;
