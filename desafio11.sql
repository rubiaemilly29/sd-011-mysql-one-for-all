CREATE VIEW cancoes_premium AS
SELECT C.cancoes AS nome,
COUNT(HR.usuario_id) AS reproducoes
FROM cancoes C  
INNER JOIN historico_reproducoes HR ON HR.cancoes_id = C.cancoes_id
INNER JOIN usuarios U ON U.usuario_id = HR.usuario_id
WHERE U.plano_id IN(2, 3)
GROUP BY C.cancoes
ORDER BY C.cancoes;
