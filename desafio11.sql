CREATE VIEW cancoes_premium AS
SELECT titulo AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducao h_r
INNER JOIN SpotifyClone.cancoes c
ON h_r.cancoes_id = c.cancoes_id
INNER JOIN SpotifyClone.usuarios u
ON h_r.usuario_id = u.usuario_id
WHERE plano_id IN (2, 3)
GROUP BY titulo
ORDER BY nome
