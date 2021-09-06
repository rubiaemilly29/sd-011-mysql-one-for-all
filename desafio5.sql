CREATE VIEW top_2_hits_do_momento AS
SELECT titulo AS 'cancao',
COUNT(u.nome) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducao h_r
INNER JOIN SpotifyClone.cancoes c 
ON h_r.cancoes_id = c.cancoes_id
INNER JOIN SpotifyClone.usuarios u 
ON h_r.usuario_id = u.usuario_id
GROUP BY cancao
ORDER BY reproducoes DESC
LIMIT 2;
