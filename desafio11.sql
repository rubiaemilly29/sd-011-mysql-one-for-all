CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(h.cancao_id) AS album
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
WHERE p.tipo_plano IN('familiar', 'universitário')
GROUP BY c.cancao
ORDER BY 1;
