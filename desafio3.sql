CREATE VIEW historico_reproducao_usuarios AS
SELECT u.Usuario AS 'usuario',
ca.Cancao as 'nome'
FROM SpotifyClone.Usuarios AS u
INNER JOIN SpotifyClone.Historico_reproducoes AS hr
ON u.UsuarioID = hr.UsuarioID
INNER JOIN SpotifyClone.Cancoes_album AS ca
ON hr.CancaoID = ca.CancaoID
ORDER BY `usuario`, `nome`;
