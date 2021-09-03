CREATE VIEW top_2_hits_do_momento AS
SELECT m.musica_name AS 'cancao', COUNT(h.musica_id) AS 'reproducoes' FROM SpotifyClone.musicas m
INNER JOIN SpotifyClone.historico h
ON m.musica_id = h.musica_id
GROUP BY m.musica_name
ORDER BY reproducoes DESC, cancao
LIMIT 2;
