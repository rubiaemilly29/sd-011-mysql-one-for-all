CREATE VIEW cancoes_premium AS
SELECT 
c.nome_cancao AS nome,
COUNT(h.cancao_id)
FROM SpotifyClone.Historico_Reproducoes AS h
INNER JOIN SpotifyClone.Cancoes AS c
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.Usuarios AS u
ON u.usuario_id = h.usuario_id
WHERE u.plano_id = 2 OR u.plano_id = 3
GROUP BY h.cancao_id
ORDER BY c.nome_cancao;
