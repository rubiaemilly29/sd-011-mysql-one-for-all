CREATE VIEW cancoes_premium AS
SELECT mu.musica_nome AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS mu
INNER JOIN SpotifyClone.historico AS hi
INNER JOIN SpotifyClone.planos AS pl
INNER JOIN SpotifyClone.usuarios AS us
ON hi.musica_id = mu.musica_id
AND us.plano_id = pl.plano_id
AND us.usuario_id = hi.usuario_id
WHERE pl.plano_id IN ('2', '3')
GROUP BY nome
ORDER BY nome;
