CREATE VIEW top_2_hits_do_momento AS
SELECT ca.Cancao AS 'cancao',
COUNT(hr.CancaoID) AS 'reproducoes'
FROM SpotifyClone.Cancoes_album AS ca
INNER JOIN SpotifyClone.Historico_reproducoes AS hr
ON ca.CancaoID = hr.CancaoID
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` ASC
LIMIT 2;
