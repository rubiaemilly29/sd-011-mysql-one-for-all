CREATE VIEW cancoes_premium AS
SELECT
C.cancao AS `nome`,
COUNT(HR.cancao_id) AS `reproducoes`
FROM SpotifyClone.Cancoes AS C
INNER JOIN SpotifyClone.Historico_reproducoes AS HR
ON C.cancao_id = HR.cancao_id
WHERE HR.usuario_id IN (SELECT usuario_id FROM SpotifyClone.Usuario WHERE plano_id IN (2, 3))
GROUP BY `nome`
ORDER BY `nome` ASC;
