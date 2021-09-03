CREATE VIEW cancoes_premium AS 
SELECT a.musica AS nome, COUNT(b.musicaId) AS reproducoes FROM musicas AS a
INNER JOIN historico AS b
ON a.musicaId = b.musicaId
INNER JOIN usuarios AS c
ON c.usuarioId = b.usuarioId
WHERE c.planoId = 2 OR c.planoId = 3
GROUP BY a.musicaId
ORDER BY nome;
