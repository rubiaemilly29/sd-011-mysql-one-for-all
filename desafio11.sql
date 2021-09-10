CREATE VIEW cancoes_premium AS SELECT
musica.musica_nome AS nome, COUNT(*) AS reproducoes
FROM SpotifyClone.usuarios AS usuarios
INNER JOIN SpotifyClone.historico_reproducoes AS historico
ON usuarios.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.musicas AS musica
ON musica.musica_id = historico.musica_id
INNER JOIN SpotifyClone.planos AS planos
ON usuarios.plano_id = planos.plano_id
WHERE planos.plano_nome IN ('Familiar', 'Universitário')
GROUP BY nome
ORDER BY nome;
