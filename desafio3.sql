CREATE VIEW historico_reproducao_usuarios AS
SELECT
u.nome_usuario AS 'usuario',
c.cancao AS 'nome'
FROM SpotifyClone.historico_de_reproducoes AS r
JOIN SpotifyClone.usuarios AS u ON r.usuario_id = u.usuario_id
JOIN SpotifyClone.cancoes AS c ON r.cancao_id = c.cancao_id
ORDER BY u.nome_usuario ASC, c.cancao ASC;
