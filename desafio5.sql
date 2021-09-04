CREATE VIEW top_2_hits_do_momento AS
SELECT c.nome_cancao AS 'cancao', COUNT(cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.historico_de_reproducoes hdr ON hdr.cancao_id = c.id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao` LIMIT 2;
