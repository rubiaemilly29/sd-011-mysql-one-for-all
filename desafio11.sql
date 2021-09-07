CREATE VIEW cancoes_premium AS
SELECT
c.nome_cancoes AS nome,
count(h.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancoes_id = h.cancoes_id
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
WHERE p.plano = 'universitário' OR p.plano = 'Familiar'
GROUP BY c.nome_cancoes
ORDER BY nome;
