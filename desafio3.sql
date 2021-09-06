CREATE VIEW historico_reproducao_usuarios AS
SELECT us.usuario AS 'usuario',
m.nome AS 'nome'
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico_playlist_usuarios AS hou
ON us.usuario_id = hou.usuario_id
INNER JOIN SpotifyClone.relacoes_musicas AS m
ON hou.musica_id = m.musica_id
ORDER BY us.usuario, m.nome;
