CREATE VIEW top_2_hits_do_momento AS
SELECT
C.nome AS 'cancao',
COUNT(HR.cancao_id) AS 'reproducoes'
FROM SpotifyClone.historico_reproducao AS HR
LEFT JOIN SpotifyClone.cancao AS C
ON HR.cancao_id = C.cancao_id
GROUP BY C.nome
ORDER BY COUNT(HR.cancao_id) DESC, C.nome
LIMIT 2;
