CREATE VIEW cancoes_premium AS
SELECT 
c.cancao AS 'nome',
COUNT(DISTINCT(hr.usuario_id)) AS 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes hr
INNER JOIN SpotifyClone.cancoes c ON c.id = hr.cancao_id
INNER JOIN SpotifyClone.usuario u ON u.id = hr.usuario_id
INNER JOIN SpotifyClone.plano p ON u.plano_id = p.id
WHERE u.plano_id = 2 OR  u.plano_id = 3
GROUP BY c.cancao 
ORDER BY `nome`;
