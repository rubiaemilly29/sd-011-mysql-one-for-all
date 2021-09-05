CREATE VIEW cancoes_premium AS
SELECT m.nome, COUNT(*) AS reproducoes FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS hr ON hr.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas AS m ON m.musica_id = hr.musica_id
WHERE u.plano_id IN(2,3)
GROUP BY m.nome
ORDER BY nome;
