CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica_nome AS `cancao`, 
COUNT(*) AS `reproducoes`
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico AS h
ON m.musica_id = h.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC LIMIT 2;
