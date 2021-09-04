CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
WHERE plano_nome IN ('Familiar', 'Universitário')
GROUP BY `nome`
ORDER BY `nome`;
