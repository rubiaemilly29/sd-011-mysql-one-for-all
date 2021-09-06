USE SpotifyClone;

CREATE VIEW top_2_hits_do_momento AS 
SELECT 
A.nome AS cancao,
count(B.id_cancao) AS reproducoes
FROM Cancao A
LEFT JOIN Reproducao B ON B.id_cancao = A.id
GROUP BY A.nome
ORDER BY COUNT(B.id_cancao) DESC , A.nome
LIMIT 2;
