CREATE VIEW cancoes_premium AS
SELECT c.cancao AS nome, COUNT(uc.cancao_id) AS reproducoes
FROM SpotifyClone.usuario_cancao AS uc
INNER JOIN SpotifyClone.cancao AS c
ON uc.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON u.usuario_id = uc.usuario_id
WHERE u.plano_id IN (1, 3)
GROUP BY nome
ORDER BY nome;
