CREATE VIEW SpotifyClone.cancoes_premium AS
SELECT C.cancao AS `nome`, COUNT(R.usuario_id) AS reproducoes
FROM SpotifyClone.usuarios AS U

INNER JOIN SpotifyClone.historico_reproducoes AS R
ON U.usuario_id = R.usuario_id

INNER JOIN SpotifyClone.cancoes AS C
ON R.cancao_id = C.cancao_id

WHERE U.plano_id = 2 OR U.plano_id = 3

GROUP BY nome ORDER BY nome;
