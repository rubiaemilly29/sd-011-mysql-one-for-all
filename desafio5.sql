CREATE VIEW top_2_hits_do_momento AS
SELECT s.song_name AS cancao, COUNT(h.user_id) AS reproducoes
FROM historic AS h
INNER JOIN songs AS s ON s.song_id = h.song_id
GROUP BY h.song_id HAVING reproducoes > 1;
