USE SpotifyClone;

CREATE VIEW cancoes_premium AS 
SELECT 
A.nome AS nome,
COUNT(B.id_cancao) AS reproducoes
FROM Cancao A
INNER JOIN Reproducao B ON B.id_cancao = A.id
INNER JOIN Usuario C ON C.id = B.id_usuario
WHERE C.id_plano IN (2, 3)
GROUP BY A.nome
ORDER BY A.nome;
