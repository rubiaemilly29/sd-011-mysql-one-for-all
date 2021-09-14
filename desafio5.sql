CREATE VIEW top_2_hits_do_momento AS
SELECT M.music_name AS cancao, COUNT(H.user_id) AS reproducoes
FROM SpotifyClone.musics AS M JOIN SpotifyClone.history AS H ON M.music_id = H.music_id
GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2;
