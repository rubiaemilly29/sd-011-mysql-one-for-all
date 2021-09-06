CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.relacoes_musicas AS m
INNER JOIN SpotifyClone.historico_playlist_usuarios AS hou
ON m.musica_id = hou.musica_id
GROUP BY m.nome
ORDER BY `reproducoes` DESC, m.nome LIMIT 2;
