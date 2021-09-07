CREATE VIEW cancoes_premium AS SELECT
m.musica_nome AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducoes AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS m
ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.planos AS p
ON u.plano_id = p.plano_id
WHERE p.plano_nome IN ('Familiar', 'Universitário')
GROUP BY nome
ORDER BY nome;
