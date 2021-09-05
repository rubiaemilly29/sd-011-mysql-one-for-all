CREATE VIEW cancoes_premium AS
SELECT c.nome_cancao AS nome, COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON hr.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios u ON u.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.planos p ON p.plano_id = u.plano_id
WHERE p.nome_plano IN('Familiar', 'Universitãrio')
GROUP BY c.nome_cancao
ORDER BY c.nome_cancao;
