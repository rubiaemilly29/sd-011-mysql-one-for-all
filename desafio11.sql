CREATE VIEW cancoes_premium AS
SELECT
C.nome AS 'nome',
COUNT(C.nome) AS 'reproducoes'
FROM SpotifyClone.historico_reproducao AS HR
LEFT JOIN SpotifyClone.cancao AS C
ON HR.cancao_id = C.cancao_id
INNER JOIN (
SELECT
U.usuario_id,
P.nome
FROM SpotifyClone.usuario AS U
LEFT JOIN SpotifyClone.plano AS P
ON U.plano_id = P.plano_id
WHERE P.nome <> 'gratuito'
) AS P
ON HR.usuario_id = P.usuario_id
GROUP BY C.nome
ORDER BY C.nome;
