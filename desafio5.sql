CREATE VIEW top_2_hits_do_momento AS
SELECT (c.titulo) as 'cancao',
COUNT(*) as 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h ON h.cancoesId = c.cancoesId
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
