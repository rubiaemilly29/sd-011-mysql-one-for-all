CREATE VIEW top_2_hits_do_momento AS
SELECT
song AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM
SpotifyClone.Cancoes AS c
INNER JOIN
SpotifyClone.Historico_De_Reproducoes AS h_d_r ON c.id = h_d_r.cancoes_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
