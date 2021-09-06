SELECT 
msc.musica_nome AS `nome`,
COUNT(hist.musica_id) AS `reproducoes`
FROM SpotifyClone.musicas AS msc
INNER JOIN SpotifyClone.historico_musicas AS hist
ON hist.musica_id = msc.musica_id
AND (hist.usuario_id = (
SELECT usuario_id FROM SpotifyClone.usuarios WHERE plano_id = 2)
OR hist.usuario_id = (
SELECT usuario_id FROM SpotifyClone.usuarios WHERE plano_id = 3))
GROUP BY `nome`
ORDER BY `nome`;
