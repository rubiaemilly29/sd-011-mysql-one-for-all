CREATE VIEW historico_reproducao_usuarios AS
SELECT u.usuario AS 'usuario', c.cancao as 'nome' FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.usuarios AS u
ON u.id = hr.usuario_id
INNER JOIN SpotifyClone.cancoes as c
ON c.id = hr.cancao_id
ORDER BY `usuario`, `nome`;
