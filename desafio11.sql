CREATE VIEW cancoes_premium AS
SELECT m.musica_nome AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.planos AS p
ON m.musica_id = hr.musica_id
AND hr.usuario_id = u.usuario_id
AND u.plano_id = p.plano_id
WHERE p.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
