CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao_name AS cancao, COUNT(h.usuario_id) AS reproducoes FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historicos AS h
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios AS u
ON u.usuario_id = h.usuario_id
GROUP BY `cancao`
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
-- SELECT * FROM top_2_hits_do_momento;
