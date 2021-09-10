CREATE VIEW top_2_hits_do_momento AS 
SELECT a.title AS cancao, COUNT(*) AS reproducoes 
FROM SpotifyClone.songs AS a
INNER JOIN SpotifyClone.listeningHistory AS rp 
ON a.songId = rp.songId
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
