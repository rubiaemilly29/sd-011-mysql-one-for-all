CREATE VIEW top_2_hits_do_momento AS
SELECT c.cancao AS cancao, COUNT(uc.usuario_id) AS reproducoes
FROM SpotifyClone.usuario_cancao AS uc
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = uc.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
