CREATE VIEW cancoes_premium AS
SELECT titulo AS `nome`,
COUNT(u.usuario_id) AS `reproducoes`
FROM SpotifyClone.cancoes AS c
INNER JOIN
SpotifyClone.historico_de_reproducoes AS hr
ON c.cancao_id = hr.cancao_id
INNER JOIN
SpotifyClone.usuarios AS u
ON u.usuario_id = hr.usuario_id
INNER JOIN
SpotifyClone.planos AS p
ON p.plano_id = u.plano_id
WHERE tipo IN ('familiar', 'universitário')
GROUP BY titulo
ORDER BY `nome`;
