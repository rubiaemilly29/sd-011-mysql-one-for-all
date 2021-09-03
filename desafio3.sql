CREATE VIEW historico_reproducao_usuarios AS SELECT
(SELECT nome_usuario FROM SpotifyClone.usuarios WHERE id_usuario=t1.id_usuario) AS `usuario`,
(SELECT nome_cancao FROM SpotifyClone.cancoes WHERE id_cancao=t1.id_cancao) AS `nome`
FROM SpotifyClone.historico AS t1 ORDER BY `usuario`, `nome`;
