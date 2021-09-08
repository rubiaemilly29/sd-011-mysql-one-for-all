CREATE VIEW historico_reproducao_usuarios AS
SELECT usuario.nome AS 'usuario',
musica.nome_musica AS 'nome'
FROM SpotifyClone.historico_tocadas AS historico
INNER JOIN SpotifyClone.usuario AS usuario
ON historico.fk_usuario_id = usuario.usuario_id
INNER JOIN SpotifyClone.musica AS musica 
ON historico.fk_musica_id = musica.musica_id
ORDER BY usuario.nome, musica.nome_musica;
