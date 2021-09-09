CREATE VIEW historico_reproducao_usuarios AS
SELECT
usuario.usuario_nome AS usuario,
musica.musica_nome AS nome
FROM SpotifyClone.usuarios AS usuario
INNER JOIN SpotifyClone.historico_reproducoes AS historico
INNER JOIN SpotifyClone.musicas as musica
ON historico.usuario_id = usuario.usuario_id
AND historico.musica_id = musica.musica_id
ORDER BY usuario ASC, nome ASC;
