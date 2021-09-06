CREATE VIEW historico_reproducao_usuarios AS SELECT
usr.usuario_nome AS `usuario`,
msc.musica_nome AS `nome`
FROM SpotifyClone.usuarios AS usr
INNER JOIN SpotifyClone.historico_musicas AS hist
INNER JOIN SpotifyClone.musicas AS msc
ON hist.usuario_id = usr.usuario_id AND hist.musica_id = msc.musica_id
ORDER BY `usuario`, `nome`;
