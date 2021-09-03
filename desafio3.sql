CREATE VIEW historico_reproducao_usuarios AS
SELECT
Usuario.usuario AS `usuario`,
Musica.nome AS `nome`
FROM
SpotifyClone.Usuario_Musica UsuarioMusica
INNER JOIN SpotifyClone.Usuario Usuario
ON UsuarioMusica.usuario_id = Usuario.usuario_id
INNER JOIN SpotifyClone.Musica Musica
ON UsuarioMusica.musica_id = Musica.musica_id
ORDER BY
Usuario.usuario,
Musica.nome;
