CREATE VIEW cancoes_premium AS
SELECT m.musica_nome AS nome,
COUNT(*) AS reproducoes
FROM spotifyclone.musicas AS m
INNER JOIN spotifyclone.historico_reproducoes AS hr
INNER JOIN spotifyclone.usuarios AS u
INNER JOIN spotifyclone.planos AS p
ON m.musica_id = hr.musica_id
AND hr.usuario_id = u.usuario_id
AND u.plano_id = p.plano_id
WHERE p.plano_id IN (2, 3)
GROUP BY nome
ORDER BY nome;
