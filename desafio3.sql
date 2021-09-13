CREATE VIEW historico_reproducao_usuarios AS
SELECT USUARIOS.usuario_nome AS 'usuario',
MUSICAS.musica_nome AS 'nome'
FROM SpotifyClone.USUARIOS
INNER JOIN SpotifyClone.HISTORICO
ON HISTORICO.usuario = USUARIOS.usuario_id
INNER JOIN SpotifyClone.MUSICAS
ON MUSICAS.musica_id = HISTORICO.musica
ORDER BY `usuario`, `nome`;
