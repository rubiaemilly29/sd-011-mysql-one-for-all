CREATE VIEW top_2_hits_do_momento AS SELECT 
msc.musica_nome AS `cancao`,
COUNT(hist.musica_id) AS `reproducoes`
FROM SpotifyClone.musicas AS msc
INNER JOIN SpotifyClone.historico_musicas AS hist
ON hist.musica_id = msc.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
