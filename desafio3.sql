CREATE VIEW historico_reproducao_usuarios AS
SELECT USUARIOS.usuario_nome AS 'usuario',
(SELECT MUSICAS.musica_nome
FROM SpotifyClone.MUSICAS) AS 'nome'
FROM SpotifyClone.USUARIOS
ORDER BY `usuario`, `nome`;
