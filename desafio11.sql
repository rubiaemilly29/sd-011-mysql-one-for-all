CREATE VIEW cancoes_premium AS
SELECT S.cancao AS nome, COUNT(R.usuario_id) AS reproducoes
FROM SpotifyClone.usuarios AS U

INNER JOIN SpotifyClone.historico_reproducoes AS R
ON U.usuario_id = R.usuario_id

INNER JOIN SpotifyClone.cancoes AS S
ON R.cancao_id = S.cancao_id

WHERE U.plano_id = 2 OR U.plano_id = 3

GROUP BY nome ORDER BY nome;
--
SELECT * FROM SpotifyClone.cancoes_premium;
