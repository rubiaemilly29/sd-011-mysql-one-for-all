CREATE VIEW top_2_hits_do_momento AS
SELECT
c.cancao as 'cancao',
COUNT(*) as 'reproducoes'
FROM SpotifyClone.historico_de_reproducoes as r
JOIN SpotifyClone.cancoes as c on r.cancao_id = c.cancao_id
GROUP BY c.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
