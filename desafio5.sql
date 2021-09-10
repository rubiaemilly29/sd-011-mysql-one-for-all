SELECT c.cancao AS 'cancao', COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducoes AS h
ON h.cancao_id = c.cancao_id
GROUP BY h.cancao_id
ORDER BY COUNT(h.usuario_id) DESC, c.cancao
LIMIT 2;
