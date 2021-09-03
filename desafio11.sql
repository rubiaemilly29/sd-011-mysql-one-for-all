CREATE VIEW cancoes_premium AS
SELECT c.cancao_name AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historicos AS h
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON p.plano_id = u.plano_id 
WHERE p.plano_id BETWEEN 2 AND 3
GROUP BY `nome`
ORDER BY `nome`;
-- SELECT * FROM cancoes_premium;
