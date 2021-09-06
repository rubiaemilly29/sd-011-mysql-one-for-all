CREATE VIEW top_2_hits_do_momento AS 
SELECT c.cancao AS 'cancao',
COUNT(DISTINCT(hr.usuario_id))AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS hr ON hr.cancao_id = c.id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
