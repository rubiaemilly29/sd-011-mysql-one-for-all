CREATE VIEW historico_reproducao_usuarios AS
SELECT
U.nome AS 'usuario',
C.nome AS 'nome'
FROM SpotifyClone.historico_reproducao AS HR
LEFT JOIN SpotifyClone.usuario AS U
ON HR.usuario_id = U.usuario_id
LEFT JOIN SpotifyClone.cancao AS C
ON HR.cancao_id = C.cancao_id
ORDER BY U.nome, C.nome;
