CREATE VIEW cancoes_premium AS (
SELECT
c.nome_cancao AS nome,
COUNT(h.id_cancao) AS reproducoes
FROM SpotifyClone.historico_de_reproducoes AS h
INNER JOIN SpotifyClone.cancao AS c 
ON h.id_cancao = c.id_cancao
INNER JOIN SpotifyClone.usuarios AS u 
ON h.id_usuario = u.id_usuario
INNER JOIN SpotifyClone.planos AS p
ON u.id_plano = p.id_plano
WHERE p.nome_plano = 'familiar'
GROUP BY `nome`
ORDER BY `nome` ASC
);
