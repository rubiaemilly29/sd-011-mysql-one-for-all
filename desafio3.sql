CREATE VIEW historico_reproducao_usuarios AS 
SELECT a.user AS usuario, c.musica AS nome from usuarios AS a
INNER JOIN historico AS b
ON a.usuarioId = b.usuarioId
INNER JOIN musicas AS c
ON b.musicaId = c.musicaId
ORDER BY usuario, c.musica;
