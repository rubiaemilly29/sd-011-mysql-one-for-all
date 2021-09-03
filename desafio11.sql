CREATE VIEW cancoes_premium AS
SELECT m.musica_nome AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS M
INNER JOIN SpotifyClone.historico AS H
INNER JOIN SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.planos AS P
ON H.musica_id = M.musica_id
AND U.usuario_id = H.usuario_id
AND U.plano_id = P.plano_id
WHERE P.plano_id IN ('2', '3')
GROUP BY nome
ORDER BY nome;
