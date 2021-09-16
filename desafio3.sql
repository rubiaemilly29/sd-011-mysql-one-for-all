CREATE VIEW historico_reproducao_usuarios AS 
SELECT 
A.usuario AS usuario,
C.cancoes AS nome
FROM SpotifyClone.Usuarios A
INNER JOIN SpotifyClone.Historico_reproducoes B ON B.usuario_id = A.usuario_id
INNER JOIN SpotifyClone.Cancoes C ON C.cancoes_id = B.cancoes_id
ORDER BY A.usuario, C.cancoes
