CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, count(*) AS reproducoes
FROM SpotifyClone.Historico AS h
INNER JOIN SpotifyClone.Cancoes AS c ON h.cancao_id = c.cancao_id
GROUP BY h.cancao_id
ORDER BY  reproducoes DESC, cancao ASC
LIMIT 2;
