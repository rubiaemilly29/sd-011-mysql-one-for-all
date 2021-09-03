CREATE VIEW top_2_hits_do_momento AS
SELECT M.musica_nome AS cancao,
COUNT(*) AS reproducoes
FROM spotifyclone.musicas AS M
INNER JOIN spotifyclone.historico AS H
ON M.musica_id = H.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;

SELECT * FROM top_2_hits_do_momento;
