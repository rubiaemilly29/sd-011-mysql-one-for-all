CREATE VIEW top_2_hits_do_momento AS
SELECT m.nome AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.historico_reproducao AS hr
INNER JOIN SpotifyClone.musicas AS m ON m.musica_id = hr.musica_id
GROUP BY m.musica_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
