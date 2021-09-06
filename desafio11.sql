CREATE VIEW cancoes_premium AS
SELECT m.nome AS 'nome',
COUNT(hou.musica_id) AS 'reproducoes'
FROM SpotifyClone.relacoes_musicas AS m
INNER JOIN SpotifyClone.historico_playlist_usuarios AS hou
ON m.musica_id = hou.musica_id
INNER JOIN SpotifyClone.usuarios AS us
ON hou.usuario_id = us.usuario_id
WHERE us.plano_id IN (2, 3)
GROUP BY m.nome
ORDER BY m.nome;
