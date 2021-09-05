CREATE VIEW cancoes_premium AS
SELECT c.nome_cancao AS 'nome', COUNT(hr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes hr ON hr.cancao_id = c.id
INNER JOIN SpotifyClone.usuario u ON u.id = hr.usuario_id
WHERE u.plano_id = 2 OR u.plano_id = 3
GROUP BY c.nome_cancao
ORDER BY `nome`;
