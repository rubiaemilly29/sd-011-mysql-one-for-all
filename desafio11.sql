SELECT
(SELECT nome_cancao FROM SpotifyClone.cancoes WHERE id_cancao=t2.id_cancao) AS 'nome',
(SELECT COUNT(nome_cancao) FROM SpotifyClone.cancoes WHERE id_cancao=t2.id_cancao) AS 'reproducoes'
FROM SpotifyClone.usuarios AS t1
INNER JOIN SpotifyClone.historico AS t2
ON t1.id_usuario = t2.id_usuario
WHERE t1.id_plano=2 OR t1.id_plano=3 ORDER BY `nome`;
