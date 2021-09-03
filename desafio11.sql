CREATE VIEW cancoes_premium AS
SELECT m.musica_nome AS nome,
COUNT(*) AS reproducoes
FROM spotifyclone.musicas AS M
INNER JOIN spotifyclone.historico AS H
INNER JOIN spotifyclone.usuarios AS U
INNER JOIN spotifyclone.planos AS P
ON H.musica_id = M.musica_id
AND U.usuario_id = H.usuario_id
AND U.plano_id = P.plano_id
WHERE P.plano_id IN ('2', '3')
GROUP BY nome
ORDER BY nome;
