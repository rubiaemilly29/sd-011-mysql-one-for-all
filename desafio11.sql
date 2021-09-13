CREATE VIEW cancoes_premium AS
SELECT C.cancao AS nome, COUNT(*) AS reproducoes
FROM cancoes AS C
INNER JOIN historico AS H
ON C.cancoes_id = H.cancoes_id
INNER JOIN usuarios AS U
ON H.usuario_id = U.usuario_id
INNER JOIN planos AS P
ON U.plano_id = P.plano_id
WHERE P.plano IN('universitário','familiar')
GROUP BY nome
ORDER BY nome;
