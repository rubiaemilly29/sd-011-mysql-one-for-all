CREATE VIEW cancoes_premium AS
SELECT c.cancao AS 'nome',
COUNT(hr.cancao_id) AS 'reproducoes'
FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c
ON c.id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.id = hr.usuario_id
AND u.plano_id <> 1
GROUP BY `nome`
ORDER BY `nome`;
