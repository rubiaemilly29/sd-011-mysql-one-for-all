CREATE VIEW  historico_reproducao_usuarios AS
SELECT us.usuario_name AS 'usuario',
mu.musica_nome  AS 'nome'
FROM SpotifyClone.usuarios us
INNER JOIN SpotifyClone.historico his
INNER JOIN SpotifyClone.musicas mu
ON us.usuario_id = his.usuario_id
AND mu.musica_id = his.musica_id
ORDER BY `usuario`, `nome`;