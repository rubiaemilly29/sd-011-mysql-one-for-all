CREATE VIEW historico_reproducao_usuarios AS 
SELECT 
A.nome AS usuario,
C.nome AS nome
FROM SpotifyClone.Usuario A
INNER JOIN SpotifyClone.Reproducao B ON B.id_usuario = A.id
INNER JOIN SpotifyClone.Cancao C ON C.id = B.id_cancao
ORDER BY A.nome, C.nome;
