CREATE VIEW cancoes_premium AS
SELECT t1.cancao AS 'nome',
COUNT(t2.cancao_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS t1
INNER JOIN SpotifyClone.historico_de_reproducoes AS t2
ON t1.cancao_id = t2.cancao_id
INNER JOIN SpotifyClone.usuarios AS t3
ON t2.usuario_id = t3.usuario_id
WHERE t3.plano_id = 2 OR t3.plano_id = 3
GROUP BY t2.cancao_id
ORDER BY `nome` ASC;
