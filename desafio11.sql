CREATE VIEW cancoes_premium AS
SELECT cc.cancao AS nome,
COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cc
INNER JOIN SpotifyClone.historico_reproducoes AS hr
ON cc.cancao_id = hr.cancao_id
INNER JOIN SpotifyClone.usuarios as us
ON us.usuario_id = hr.usuario_id
WHERE us.plano_id IN(2,3)
GROUP BY cc.cancao
