CREATE VIEW cancoes_premium AS
SELECT 
  c.cancoes nome,
  COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducao AS hr 
ON hr.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = hr.usuario_id
INNER JOIN SpotifyClone.planos AS p 
ON p.plano_id = u.plano_id
WHERE p.planos IN('Familiar', 'Universitãrio')
GROUP BY c.cancoes
ORDER BY c.cancoes;
