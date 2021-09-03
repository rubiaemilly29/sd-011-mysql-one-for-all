CREATE VIEW top_2_hits_do_momento AS 
SELECT a.musica AS cancao, COUNT(b.musicaId) AS reproducoes FROM musicas AS a
INNER JOIN historico AS b
ON a.musicaId = b.musicaId
GROUP BY a.musicaId
ORDER BY reproducoes DESC
LIMIT 2;
