CREATE VIEW cancoes_premium AS
SELECT m.nome AS nome, COUNT(*) AS reproducoes FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr
ON m.musica_id = hr.musica_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = hr.usuario_id AND u.usuario_id IN (2, 3)
GROUP BY nome
ORDER BY nome;