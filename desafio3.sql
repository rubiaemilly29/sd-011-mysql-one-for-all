CREATE VIEW historico_reproducao_usuarios AS
SELECT (u.nome) as 'usuario',
(c.titulo) as 'nome'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h ON h.usuarioId = u.usuarioId
INNER JOIN SpotifyClone.cancoes AS c ON c.cancoesId = h.cancoesId
ORDER BY `usuario`, `nome`;
