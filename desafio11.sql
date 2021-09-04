CREATE VIEW cancoes_premium AS
SELECT c.titulo AS 'nome',
COUNT(h.cancoesId) AS 'reproducoes' 
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h ON h.cancoesId = c.cancoesId
INNER JOIN SpotifyClone.usuario AS u ON u.usuarioId = h.usuarioId
WHERE u.planoId = 2 OR u.planoId = 3
GROUP BY c.titulo
ORDER BY c.titulo;
