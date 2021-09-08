CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(h.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON c.cancao_id = h.cancao_id AND h.usuario_id <> 1 AND h.usuario_id <> 4
GROUP BY nome
ORDER BY nome ASC;
