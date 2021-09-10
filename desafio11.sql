CREATE VIEW cancoes_premium AS
SELECT
C.title nome,
COUNT(*) reproducoes
FROM SpotifyClone.Cancoes C
INNER JOIN SpotifyClone.Historico_reproducoes H ON C.cancao_id = H.cancao_id
INNER JOIN SpotifyClone.Usuarios U ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.Planos P ON P.plano_id = U.plano_id
WHERE U.plano_id IN (2,3)
GROUP BY `nome`
ORDER BY `nome`;
