CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome AS 'usuario', m.musica_name AS 'nome'
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.historico h
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.musicas m
ON m.musica_id = h.musica_id
ORDER BY u.nome, m.musica_name;
