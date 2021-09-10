CREATE VIEW top_2_hits_do_momento AS 
SELECT a.title AS cancoes, COUNT(*) AS reproducoes 
FROM SpotifyClone.songs AS a
INNER JOIN SpotifyClone.listeningHistory AS rp 
ON a.songId = rp.songId
GROUP BY cancoes
ORDER BY reproducoes DESC, cancoes ASC
LIMIT 2;
