CREATE VIEW cancoes_premium AS
SELECT C.cancao AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON  H.cancao_id = C.cancao_id
INNER JOIN SpotifyClone.usuarios AS U
ON U.usuario_id = H.usuario_id AND U.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
