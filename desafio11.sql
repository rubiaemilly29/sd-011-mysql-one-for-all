CREATE VIEW cancoes_premium AS
SELECT
Musica.nome AS `nome`,
COUNT(Musica.nome) AS `reproducoes`
FROM SpotifyClone.Musica Musica
INNER JOIN SpotifyClone.Usuario_Musica UsuarioMusica
ON Musica.musica_id = UsuarioMusica.musica_id
INNER JOIN SpotifyClone.Usuario Usuario
ON UsuarioMusica.usuario_id = Usuario.usuario_id
WHERE Usuario.plano_id IN (
SELECT plano_id
FROM SpotifyClone.Plano
WHERE nome <> 'Gratuito'
)
GROUP BY Musica.nome
ORDER BY Musica.nome;
