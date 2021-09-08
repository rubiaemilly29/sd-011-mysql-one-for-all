CREATE VIEW cancoes_premium AS 
SELECT 
A.cancoes AS nome,
COUNT(B.cancoes_id) AS reproducoes
FROM SpotifyClone.Cancoes A
INNER JOIN SpotifyClone.Historico_reproducoes B ON B.cancoes_id = A.cancoes_id
INNER JOIN SpotifyClone.Usuarios C ON C.usuario_id = B.usuario_id
WHERE C.plano_id IN (2, 3)
GROUP BY A.cancoes
ORDER BY A.cancoes;