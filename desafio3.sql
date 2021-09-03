CREATE VIEW historico_reproducao_usuarios AS
SELECT B.nome_usuario AS usuario, C.nome_cancao AS nome
FROM SpotifyClone.Historico_Reproducoes AS A
INNER JOIN SpotifyClone.Usuarios AS B
ON A.usuario_id = B.usuario_id
INNER JOIN SpotifyClone.Cancoes AS C
ON A.cancao_id = C.cancao_id
ORDER BY B.nome_usuario, C.nome_cancao;
