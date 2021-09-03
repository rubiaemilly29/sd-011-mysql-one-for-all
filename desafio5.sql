CREATE VIEW top_2_hits_do_momento AS
SELECT C.cancao cancao, COUNT(RP.historico_de_reproducoes) `reproducoes`
FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.reproducoes RP
ON C.cancao_id = RP.cancao_id
GROUP BY cancao
ORDER BY `reproducoes` DESC, cancao LIMIT 2;
