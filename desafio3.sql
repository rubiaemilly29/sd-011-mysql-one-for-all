CREATE VIEW historico_reproducao_usuarios AS SELECT U.usuario AS usuario, M.musica AS nome FROM SpotifyClone.usuario_musica UM
INNER JOIN SpotifyClone.usuarios U ON UM.usuario_id = U.usuario_id
INNER JOIN SpotifyClone.musicas M ON UM.musica_id = M.musica_id
ORDER BY `usuario`, `nome`;
