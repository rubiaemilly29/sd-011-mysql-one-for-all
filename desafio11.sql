CREATE VIEW cancoes_premium AS
SELECT 
c.cancao `nome`,
COUNT(hr.cancao_id) `reproducoes`
FROM historico_reproducoes hr
INNER JOIN cancoes c ON c.cancao_id = hr.cancao_id
INNER JOIN usuarios u ON u.usuario_id = hr.usuario_id
INNER JOIN planos p ON p.plano_id = u.plano_id
WHERE p.plano IN ('familiar', 'universitario')
GROUP BY c.cancao
ORDER BY c.cancao;
