CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS 'cancao', COUNT(hr.cancao_id) AS 'reproducoes' FROM SpotifyClone.historico_reproducoes AS hr
INNER JOIN SpotifyClone.cancoes AS c
ON c.id = hr.cancao_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
