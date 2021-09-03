CREATE VIEW top_2_hits_do_momento AS
SELECT 
m.titulo AS 'cancao',
COUNT(h.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON m.musica_id = h.musica_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
