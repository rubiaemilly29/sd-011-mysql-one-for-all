
CREATE VIEW cancoes_premium AS
SELECT C.cancao `nome`, COUNT(RP.cancao_id) reproducoes
FROM SpotifyClone.cancoes C
INNER JOIN SpotifyClone.reproducoes RP
ON C.cancao_id = RP.cancao_id
INNER JOIN SpotifyClone.usuarios U
ON U.usuario_id = RP.usuario_id
INNER JOIN SpotifyClone.planos P
ON U.plano_id = P.plano_id
WHERE P.plano IN ('familiar', 'universitario')
GROUP BY `nome`
ORDER BY `nome`;
